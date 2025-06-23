import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';
import '../services/permission_service.dart';
import '../widgets/step_display.dart';

class StepCounterPage extends StatefulWidget {
  const StepCounterPage({super.key});

  @override
  State<StepCounterPage> createState() => _StepCounterPageState();
}

class _StepCounterPageState extends State<StepCounterPage> with WidgetsBindingObserver {
  StreamSubscription<StepCount>? _stepSubscription;
  int _steps = 0;
  bool _isTracking = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    _stepSubscription?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_stepSubscription != null) {
      if (state == AppLifecycleState.paused) {
        _stepSubscription?.pause();
      } else if (state == AppLifecycleState.resumed) {
        _stepSubscription?.resume();
      }
    }
  }

  Future<void> _requestPermissionAndStart() async {
    final granted = await PermissionService.requestActivityRecognition();
    if (granted) {
      _startListeningSteps();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Izin ditolak. Tidak bisa melacak langkah.")),
      );
    }
  }

  void _startListeningSteps() {
    _stepSubscription = Pedometer.stepCountStream.listen(
          (event) {
        setState(() {
          _steps = event.steps;
        });
      },
      onError: (error) => print("Error: $error"),
      cancelOnError: true,
    );

    setState(() => _isTracking = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Penghitung Langkah")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StepDisplay(stepCount: _steps),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _isTracking ? null : _requestPermissionAndStart,
              child: const Text("Mulai Hitung Langkah"),
            ),
          ],
        ),
      ),
    );
  }
}
