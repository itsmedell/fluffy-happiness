import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Login')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'PIN',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            FilledButton(
              onPressed: null,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
