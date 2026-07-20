import 'package:hive/hive.dart';

class EmployeeStorage {
  static const String boxName = 'employees';

  static Future<Box> openBox() async {
    return await Hive.openBox(boxName);
  }

  static Future<void> addEmployee(String key, dynamic value) async {
    final box = await openBox();
    await box.put(key, value);
  }

  static Future<List<dynamic>> getEmployees() async {
    final box = await openBox();
    return box.values.toList();
  }

  static Future<void> updateEmployee(String key, dynamic value) async {
    final box = await openBox();
    await box.put(key, value);
  }

  static Future<void> deleteEmployee(String key) async {
    final box = await openBox();
    await box.delete(key);
  }
}
