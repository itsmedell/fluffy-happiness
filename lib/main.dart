import 'package:flutter/material.dart';

void main() {
  runApp(const RivermouthApp());
}

class RivermouthApp extends StatelessWidget {
  const RivermouthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rivermouth Scheduler',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Rivermouth Scheduler'),
        ),
      ),
    );
  }
}
