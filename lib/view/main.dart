import 'package:flutter/material.dart';
import 'package:home_rental_app/view/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyStartScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
