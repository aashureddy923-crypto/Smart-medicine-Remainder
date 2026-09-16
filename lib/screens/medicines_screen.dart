import 'package:flutter/material.dart';
import 'add_medicine_screen.dart';
import 'medicine_details_screen.dart';

class MedicinesScreen extends StatefulWidget {
  const MedicinesScreen({super.key});

  @override
  State<MedicinesScreen> createState() => _MedicinesScreenState();
}

class _MedicinesScreenState extends State<MedicinesScreen> {
  List<Map<String, String>> medicines = [
    {
      'name': 'Paracetamol',
      'dosage': '500 mg',
      'time': '9:00 AM',
      'frequency': 'Every day',
    },
    {
      'name': 'Vitamin D',
      'dosage': '1 Tablet',
      'time': '8:00 PM',
      'frequency': 'Once a day',
    },
    {
      'name': 'Calcium',
      'dosage': '1 Tablet',
      'time': '9:00 PM',
      'frequency': 'Once a day',
    },
  ];

  Future<void> addMedicine() async {
    final newMedicine = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddMedicineScreen(),
      ),
    );

    if (newMedicine != null) {
      setState(() {
        medicines.add(newMedicine);
      });
    }
  }

  Future<void> openMedicineDetails(int index) async {
    final medicine = medicines[index];

    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MedicineDetailsScreen(
          name: medicine['name']!,
          dosage: medicine['dosage']!,
          time: medicine['time']!,
          frequency: medicine['frequency']!,
        ),
      ),
    );

    if (result == true) {
      setState(() {
        medicines.removeAt(index);
      });
    } else if (result is Map<String, String>) {
      setState(() {
        medicines[index] = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF8),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAF8),
        elevation: 0,

        title: const Text(
          'My Medicines',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your Medicines',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            const Text(
              'Keep track of all your medicines.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: ListView.builder(
                itemCount: medicines.length,

                itemBuilder: (context, index) {
                  final medicine = medicines[index];

                  return medicineCard(
                    index,
                    medicine['name']!,
                    medicine['dosage']!,
                    medicine['time']!,
                    medicine['frequency']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF43A047),

        onPressed: addMedicine,

        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget medicineCard(
    int index,
    String name,
    String dosage,
    String time,
    String frequency,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),

      onTap: () {
        openMedicineDetails(index);
      },

      child: Container(
        margin: const EdgeInsets.only(bottom: 15),

        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),

        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(14),

              decoration: BoxDecoration(
                color: const Color(0xFFE8F5E9),
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Icon(
                Icons.medication_rounded,
                color: Color(0xFF43A047),
                size: 28,
              ),
            ),

            const SizedBox(width: 15),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    dosage,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    '$time • $frequency',
                    style: const TextStyle(
                      color: Color(0xFF43A047),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}