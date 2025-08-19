import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    // depois aqui você implementa histórico de leituras
    return Scaffold(
      appBar: AppBar(title: const Text("Relatórios")),
      drawer: const AppDrawer(),
      body: const Center(
        child: Text(
          "Relátórios",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}