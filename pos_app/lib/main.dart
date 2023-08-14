import 'package:flutter/material.dart';
import 'package:pos_app/dashboard_view.dart';
import 'package:pos_app/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Testing"),
        ),
        body: 
       const LoginView()
      ),
    );
  }
}
