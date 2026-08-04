import '../models/gasometry_result.dart';

class GasometryInterpreter {
  static GasometryResult interpret({
    required double ph,
    required double pco2,
    required double hco3,
  }) {
    if (ph < 7.35) {
      if (hco3 < 22) {
        return const GasometryResult(
          primaryDisorder: 'Acidose metabólica',
          compensation: 'Avaliação da compensação pendente',
          recommendation: 'Calcular Ânion Gap.',
        );
      }

      if (pco2 > 45) {
        return const GasometryResult(
          primaryDisorder: 'Acidose respiratória',
          compensation: 'Avaliação da compensação pendente',
          recommendation: 'Avaliar tempo de instalação.',
        );
      }
    }

    if (ph > 7.45) {
      if (hco3 > 26) {
        return const GasometryResult(
          primaryDisorder: 'Alcalose metabólica',
          compensation: 'Avaliação da compensação pendente',
          recommendation: 'Avaliar perdas de H⁺.',
        );
      }

      if (pco2 < 35) {
        return const GasometryResult(
          primaryDisorder: 'Alcalose respiratória',
          compensation: 'Avaliação da compensação pendente',
          recommendation: 'Avaliar hiperventilação.',
        );
      }
    }

    return const GasometryResult(
      primaryDisorder: 'Sem alteração significativa',
      compensation: '-',
      recommendation: 'Correlacionar com o quadro clínico.',
    );
  }
}