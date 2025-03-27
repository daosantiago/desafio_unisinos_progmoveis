import 'package:desafio_unisinos/data/task_inherited.dart';
import 'package:desafio_unisinos/screens/form_screen.dart';
import 'package:desafio_unisinos/screens/initial_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARA TUBOS',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: TaskInherited(child: const InitialScreen()),
    );
  }
}

