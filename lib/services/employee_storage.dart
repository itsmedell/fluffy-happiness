import 'package:hive/hive.dart';

class EmployeeStorage {
  static const String boxName = 'employees';

  static Future<Box> openBox() async {
    return await Hive.openBox(boxName);
  }
}"}