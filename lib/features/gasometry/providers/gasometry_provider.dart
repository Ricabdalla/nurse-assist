import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/gasometry_result.dart';
import '../services/gasometry_interpreter.dart';

class GasometryNotifier extends StateNotifier<GasometryResult?> {
  GasometryNotifier() : super(null);

  void interpret({
    required double ph,
    required double pco2,
    required double hco3,
  }) {
    state = GasometryInterpreter.interpret(
      ph: ph,
      pco2: pco2,
      hco3: hco3,
    );
  }
}

final gasometryProvider =
    StateNotifierProvider<GasometryNotifier, GasometryResult?>(
  (ref) => GasometryNotifier(),
);