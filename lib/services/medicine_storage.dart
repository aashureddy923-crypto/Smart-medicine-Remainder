
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class MedicineStorage {
  static const String _storageKey = 'medicines';

  // Save medicines to local storage
  static Future<void> saveMedicines(
    List<Map<String, String>> medicines,
  ) async {
    final prefs = await SharedPreferences.getInstance();

    final encodedData = jsonEncode(medicines);

    await prefs.setString(_storageKey, encodedData);
  }

  // Load medicines from local storage
  static Future<List<Map<String, String>>> loadMedicines() async {
    final prefs = await SharedPreferences.getInstance();

    final savedData = prefs.getString(_storageKey);

    if (savedData == null || savedData.isEmpty) {
      return [];
    }

    try {
      final decodedData = jsonDecode(savedData) as List<dynamic>;

      return decodedData.map<Map<String, String>>((item) {
        final medicine = Map<String, dynamic>.from(item as Map);

        return medicine.map<String, String>((key, value) {
          return MapEntry(key, value.toString());
        });
      }).toList();
    } catch (e) {
      return [];
    }
  }

  // Clear all saved medicines if needed
  static Future<void> clearMedicines() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove(_storageKey);
  }
}
