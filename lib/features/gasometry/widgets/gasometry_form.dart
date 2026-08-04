import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/gasometry_provider.dart';

class GasometryForm extends ConsumerStatefulWidget {
  const GasometryForm({super.key});

  @override
  ConsumerState<GasometryForm> createState() => _GasometryFormState();
}

class _GasometryFormState extends ConsumerState<GasometryForm> {
  final phController = TextEditingController();
  final pco2Controller = TextEditingController();
  final hco3Controller = TextEditingController();

  @override
  void dispose() {
    phController.dispose();
    pco2Controller.dispose();
    hco3Controller.dispose();
    super.dispose();
  }

  InputDecoration inputDecoration(String label, String hint) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }

  void interpretar() {
    final ph = double.tryParse(
      phController.text.replaceAll(',', '.'),
    );

    final pco2 = double.tryParse(
      pco2Controller.text.replaceAll(',', '.'),
    );

    final hco3 = double.tryParse(
      hco3Controller.text.replaceAll(',', '.'),
    );

    if (ph == null || pco2 == null || hco3 == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Preencha todos os campos corretamente.'),
        ),
      );
      return;
    }

    ref.read(gasometryProvider.notifier).interpret(
          ph: ph,
          pco2: pco2,
          hco3: hco3,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Valores da Gasometria',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        Text(
          'Informe os resultados do exame.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 24),

        TextField(
          controller: phController,
          keyboardType:
              const TextInputType.numberWithOptions(decimal: true),
          decoration: inputDecoration(
            'pH',
            'Ex.: 7.40',
          ),
        ),

        const SizedBox(height: 16),

        TextField(
          controller: pco2Controller,
          keyboardType:
              const TextInputType.numberWithOptions(decimal: true),
          decoration: inputDecoration(
            'PaCO₂ (mmHg)',
            'Ex.: 40',
          ),
        ),

        const SizedBox(height: 16),

        TextField(
          controller: hco3Controller,
          keyboardType:
              const TextInputType.numberWithOptions(decimal: true),
          decoration: inputDecoration(
            'HCO₃⁻ (mEq/L)',
            'Ex.: 24',
          ),
        ),

        const SizedBox(height: 28),

        SizedBox(
          width: double.infinity,
          height: 56,
          child: FilledButton.icon(
            onPressed: interpretar,
            icon: const Icon(Icons.science),
            label: const Text(
              'Interpretar Gasometria',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}