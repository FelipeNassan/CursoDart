import 'dart:io';

main() {
  stdout.write('Digite algo: ');
  minhaFuncao(stdin.readLineSync());
}

minhaFuncao(String? text) {
  print('Você digitou "$text"!');
}
