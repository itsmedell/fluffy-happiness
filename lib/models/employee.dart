class Employee {
  final String name;
  final String role;

  const Employee({
    required this.name,
    this.role = 'Staff',
  });

  factory Employee.fromMap(Map<String, dynamic> map) {
    return Employee(
      name: map['name'] ?? '',
      role: map['role'] ?? 'Staff',
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'role': role,
  };
}
