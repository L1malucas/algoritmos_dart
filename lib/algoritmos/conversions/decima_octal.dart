// ignore_for_file: avoid_print
import 'dart:io';

void decimalOctalMain() {
  bool tryAgain = false;
  while (tryAgain != true) {
    print(conversion());
    print('Deseja converter novamente? (SIM/NAO)');
    String? optionChoosed = stdin.readLineSync()!.toLowerCase();
    if (optionChoosed == 'nao') {
      tryAgain = true;
      return;
    }
    sleep(Duration(milliseconds: 20));
    print(Process.runSync("clear", [], runInShell: true).stdout);
  }
}

String conversion() {
  print('');
  print('-------------------------------------------------------------');
  print('Digite um número em dicmal para converter a octal');
  int? userNumber = int.parse(stdin.readLineSync()!);
  return ('O valor $userNumber em octal é: ${decimalOctal(userNumber)}');
}

String decimalOctal(int decimalValue) {
  if (decimalValue == 0) {
    return '0';
  }

  bool negative = false;

  if (decimalValue < 0) {
    negative = true;
    decimalValue *= -1;
  }

  String stringOctal = '';

  while (decimalValue > 0) {
    int rest = decimalValue % 8;
    decimalValue = decimalValue ~/ 8;
    stringOctal = rest.toString() + stringOctal;
  }

  return negative ? '-$stringOctal' : stringOctal;
}
