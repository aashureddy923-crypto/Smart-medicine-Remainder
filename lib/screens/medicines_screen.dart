import 'package:flutter/material.dart';

class MedicinesScreen extends StatelessWidget {
  const MedicinesScreen({super.key});

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
              child: ListView(
                children: [

                  medicineCard(
                    'Paracetamol',
                    '500 mg',
                    '9:00 AM',
                    'Every day',
                    Icons.medication_rounded,
                  ),

                  medicineCard(
                    'Vitamin D',
                    '1 Tablet',
                    '8:00 PM',
                    'Once a day',
                    Icons.medication_rounded,
                  ),

                  medicineCard(
                    'Calcium',
                    '1 Tablet',
                    '9:00 PM',
                    'Once a day',
                    Icons.medication_rounded,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF43A047),
        onPressed: () {
          // Add medicine screen will be connected later
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget medicineCard(
    String name,
    String dosage,
    String time,
    String frequency,
    IconData icon,
  ) {
    return Container(
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

            child: Icon(
              icon,
              color: const Color(0xFF43A047),
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
    );
  }
}