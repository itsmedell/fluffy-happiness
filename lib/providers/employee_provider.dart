import 'package:flutter/material.dart';
import '../services/employee_storage.dart';

class EmployeeProvider extends ChangeNotifier {
  final EmployeeStorage storage = EmployeeStorage();

  List<dynamic> employees = [];

  Future<void> loadEmployees() async {
    employees = await EmployeeStorage.getEmployees();
    notifyListeners();
  }
}
