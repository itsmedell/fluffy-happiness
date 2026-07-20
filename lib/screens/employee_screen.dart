import 'package:flutter/material.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key});

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  final TextEditingController controller = TextEditingController();

  void showAddEmployeeDialog() {
    controller.clear();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Tambah Karyawan"),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(hintText: "Nama karyawan"),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("Batal")),
          ElevatedButton(
            onPressed: () async {
              if (controller.text.trim().isEmpty) return;
              Navigator.pop(context);
            },
            child: const Text("Simpan"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Employee Management')),
      floatingActionButton: FloatingActionButton(
        onPressed: showAddEmployeeDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
