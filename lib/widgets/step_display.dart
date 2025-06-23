import 'package:flutter/material.dart';

class StepDisplay extends StatelessWidget {
  final int stepCount;

  const StepDisplay({super.key, required this.stepCount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Jumlah Langkah:',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        Text(
          '$stepCount',
          style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
