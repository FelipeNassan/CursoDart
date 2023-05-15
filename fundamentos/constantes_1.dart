import 'dart:io';
import 'dart:math';

main() {
  stdout.write("Informe o raio: "); // Imprime na tela o texto (standard out)
  var entradaDoUsuario = stdin.readLineSync()!; // Pega os dados do teclado (standard in)

  final raioCircunferencia = double.parse(entradaDoUsuario);
  final areaCircunferencia = pi * pow(raioCircunferencia, 2); // Ac = pi * raio ^ 2
  
  print("O raio da circunferência é de " + areaCircunferencia.toString());
}
