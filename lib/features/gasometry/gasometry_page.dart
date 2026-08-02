import 'package:flutter/material.dart';

class GasometryPage extends StatelessWidget {
  const GasometryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gasometria'),
      ),
      body: const Center(
        child: Text(
          'Módulo de Gasometria\n(em desenvolvimento)',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}