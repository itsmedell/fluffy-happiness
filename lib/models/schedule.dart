import 'employee.dart';
import 'shift.dart';

class Schedule {
  final Employee employee;
  final DateTime date;
  final Shift shift;

  Schedule({
    required this.employee,
    required this.date,
    required this.shift,
  });
}
