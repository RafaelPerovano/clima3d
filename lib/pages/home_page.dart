import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double temperatura = 0;
  double umidade = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 2), (_) {
      setState(() {
        temperatura = 20 + Random().nextDouble() * 10;
        umidade = 40 + Random().nextDouble() * 40;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Clima3D"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 33, 150, 243),
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.thermostat, size: 80, color: Colors.red),
            Text(
              "${temperatura.toStringAsFixed(1)} °C",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Icon(Icons.water_drop, size: 80, color: Colors.blue),
            Text(
              "${umidade.toStringAsFixed(1)} %",
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
