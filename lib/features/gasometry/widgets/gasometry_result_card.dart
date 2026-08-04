import 'package:flutter/material.dart';

import '../models/gasometry_result.dart';

class GasometryResultCard extends StatelessWidget {
  final GasometryResult? result;

  const GasometryResultCard({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    if (result == null) {
      return const SizedBox();
    }

    return Card(
      margin: const EdgeInsets.only(top: 24),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Resultado',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              result!.primaryDisorder,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              result!.compensation,
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 12),

            Text(
              result!.recommendation,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}