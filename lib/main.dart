import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_Page.dart';

void main() {
  runApp(const counterApp());
}

// ignore: camel_case_types
class counterApp extends StatelessWidget {
  const counterApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
