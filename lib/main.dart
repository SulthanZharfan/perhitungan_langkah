import 'package:flutter/material.dart';
import 'pages/step_counter_page.dart';

void main() {
  runApp(const StepCounterApp());
}

class StepCounterApp extends StatelessWidget {
  const StepCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penghitung Langkah',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const StepCounterPage(),
    );
  }
}
