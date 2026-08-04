import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/gasometry_provider.dart';
import 'widgets/gasometry_form.dart';
import 'widgets/gasometry_result_card.dart';

class GasometryPage extends ConsumerWidget {
  const GasometryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(gasometryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Gasometria'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const GasometryForm(),

            GasometryResultCard(
              result: result,
            ),
          ],
        ),
      ),
    );
  }
}