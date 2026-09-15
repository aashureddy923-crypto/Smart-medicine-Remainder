import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAF8),

      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAF8),
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            const CircleAvatar(
              radius: 48,
              backgroundColor: Color(0xFFE8F5E9),
              child: Icon(
                Icons.person_rounded,
                size: 55,
                color: Color(0xFF43A047),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'Aashritha',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              'Manage your medicine reminders',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 30),

            profileOption(
              Icons.person_outline_rounded,
              'Personal Information',
              'Update your profile details',
            ),

            profileOption(
              Icons.notifications_none_rounded,
              'Notifications',
              'Manage medicine reminders',
            ),

            profileOption(
              Icons.accessibility_new_rounded,
              'Health Information',
              'Manage your health details',
            ),

            profileOption(
              Icons.settings_outlined,
              'Settings',
              'App preferences',
            ),

            profileOption(
              Icons.help_outline_rounded,
              'Help & Support',
              'Get help with the app',
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.logout),
                label: const Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.red,
                  side: const BorderSide(
                    color: Colors.red,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileOption(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),

      child: Row(
        children: [

          Container(
            padding: const EdgeInsets.all(11),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F5E9),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: const Color(0xFF43A047),
            ),
          ),

          const SizedBox(width: 14),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}