import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prva aplikacija',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Moja prva aplikacija'),
        ),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Student: Ime Prezime'),
              SizedBox(height: 12),
              Text('Dart i Flutter'),
            ],
          ),
        ),
      ),
    );
  }
}