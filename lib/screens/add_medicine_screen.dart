import 'package:flutter/material.dart';

class AddMedicineScreen extends StatefulWidget {
  const AddMedicineScreen({super.key});

  @override
  State<AddMedicineScreen> createState() => _AddMedicineScreenState();
}

class _AddMedicineScreenState extends State<AddMedicineScreen> {
  final TextEditingController medicineController =
      TextEditingController();

  final TextEditingController dosageController =
      TextEditingController();

  TimeOfDay selectedTime = const TimeOfDay(hour: 9, minute: 0);

  String selectedFrequency = 'Once a day';

  Future<void> selectTime() async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (time != null) {
      setState(() {
        selectedTime = time;
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
          'Add Medicine',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Medicine Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Add the details of your medicine below.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Medicine Name',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: medicineController,
              decoration: InputDecoration(
                hintText: 'Example: Paracetamol',
                prefixIcon: const Icon(
                  Icons.medication_outlined,
                  color: Color(0xFF43A047),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Dosage',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            TextField(
              controller: dosageController,
              decoration: InputDecoration(
                hintText: 'Example: 500 mg',
                prefixIcon: const Icon(
                  Icons.local_pharmacy_outlined,
                  color: Color(0xFF43A047),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Time',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            InkWell(
              onTap: selectTime,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.access_time_rounded,
                      color: Color(0xFF43A047),
                    ),

                    const SizedBox(width: 12),

                    Text(
                      selectedTime.format(context),
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    const Spacer(),

                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Frequency',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),

              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedFrequency,
                  isExpanded: true,
                  items: const [
                    DropdownMenuItem(
                      value: 'Once a day',
                      child: Text('Once a day'),
                    ),
                    DropdownMenuItem(
                      value: 'Twice a day',
                      child: Text('Twice a day'),
                    ),
                    DropdownMenuItem(
                      value: 'Three times a day',
                      child: Text('Three times a day'),
                    ),
                    DropdownMenuItem(
                      value: 'As needed',
                      child: Text('As needed'),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedFrequency = value!;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 35),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Medicine added successfully!',
                      ),
                    ),
                  );
                },

                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF43A047),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),

                child: const Text(
                  'Add Medicine',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
