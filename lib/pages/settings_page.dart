import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Configurações")),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text(
          "Configurações futuras aqui",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}