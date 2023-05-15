import 'dart:io';
import 'dart:math';

main() {
  // CÁLCULO DA EQUAÇÃO DO SEGUNDO GRAU
  // PEGAR DO TERMINAL OS COEFICIENTES A, B e C
  print("\nEquação do Segundo Grau");
  print("-" * 23);
  stdout.write("Informe o valor de A: ");
  var terminalCoeficienteA = stdin.readLineSync();
  double coeficienteA = double.parse(terminalCoeficienteA.toString());

  stdout.write("Informe o valor de B: ");
  var terminalCoeficienteB = stdin.readLineSync();
  double coeficienteB = double.parse(terminalCoeficienteB.toString());

  stdout.write("Informe o valor de C: ");
  var terminalCoeficienteC = stdin.readLineSync();
  double coeficineteC = double.parse(terminalCoeficienteC.toString());
  print("-" * 23);

  // Incluir os coeficientes no formato geral da equação do segundo grau
  print(
      "Sua equação é: ($coeficienteA)x^2 + ($coeficienteB)x + ($coeficineteC) = 0");

  // Cálculo do delta (D = b^2 * a * c)
  final valorDelta = pow(coeficienteB, 2) - (4 * coeficienteA * coeficineteC);
  print("Valor do delta: $valorDelta");
  print("-" * 23);

  // Validação do valor do delta
  if (valorDelta < 0) {
    print("Para delta negativo não existem raízes reais.");
  } else {
    // Fórmula de Bháskara
    final raizX_1 = (-(coeficienteB) + sqrt(valorDelta)) / (2 * coeficienteA);
    final raizX_2 = (-(coeficienteB) - sqrt(valorDelta)) / (2 * coeficienteA);

    if (valorDelta == 0) {
      print("Para delta zero, temos duas raízes reais iguais a: ");
      print("x: $raizX_1");
    } else {
      print("Para delta positivo, duas raízes reais diferentes: ");
      print("x': $raizX_1");
      print("x'': $raizX_2");
    }
    print("");
  }
}
