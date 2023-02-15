import 'dart:io';
import 'package:algoritmos_dart/algoritmos/conversions/decima_octal.dart';

bool EXIT = false;
void main() {
  // EXIBE A APRESENTAÇÃO DO INÍCIO
  initialShow();

  // INICIA O LOOP DA APLICAÇÃO
  while (EXIT != true) {
    menu();
    // LÊ E ENVIA A OPÇÃO DO MENU PRINCIPAL
    userChoice();
    if (EXIT == true) {
      sleep(Duration(milliseconds: 20));
      print(Process.runSync("clear", [], runInShell: true).stdout);
      print('-------------------------------------------------------------');
      print('     Repo: https://github.com/L1malucas/algoritmos_dart');
      print('-------------------------------------------------------------');
      print('');
      print('--------------------------Até Logo!--------------------------');
    }
  }
}

void initialShow() {
  for (var i = 0; i < 7; i++) {
    print(
        '--------------------- Algoritmos com Dart --------------------------');
    sleep(Duration(milliseconds: 300));
  }
  if (Platform.isWindows) {
    sleep(Duration(milliseconds: 20));
    print(Process.runSync("clear", [], runInShell: true).stdout);
  } else {
    sleep(Duration(milliseconds: 20));
    print(Process.runSync("cls", [], runInShell: true).stdout);
  }
  return;
}

userChoice() {
  String? optionChoosed = stdin.readLineSync();
  return optionChoosed;
}

void menu() {
  print('Escolha uma das opções abaixo');
  print('1. --------------------------------------------------- Conversões');
  print('2. --------------------------------------------------- Matemática');
  print('3. --------------------------------------------------------- Sair');
  var option = userChoice();
  switch (option) {
    case '1':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        conversionMenu();
      }
      break;
    case '2':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        conversionMenu();
      }
      break;
    case '3':
      {
        print('-----------------Pressione enter para confirmar!--------------');
        EXIT = true;
        return;
      }
    default:
      {
        print('Escolha uma opção válida.');
      }
  }
}

void conversionMenu() {
  print('1. --------------------------------------------- Decimal -> Octal');
  print('2. ------------------------------------------- Decimal -> Binário');
  print('3. --------------------------------------------------------- Voltar');
  var option = userChoice();
  switch (option) {
    case '1':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        decimalOctalMain();
      }
      break;
    case '2':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        conversionMenu();
      }
      break;
    case '3':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        menu();
      }
      break;
    default:
      {
        print('Escolha uma opção válida.');
      }
  }
}

void mathMenu() {
  print('1. --------------------------------------------- Decimal -> Octal');
  print('2. ------------------------------------------- Decimal -> Binário');
  print('3. --------------------------------------------------------- Voltar');
  var option = userChoice();
  switch (option) {
    case '1':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        conversionMenu();
      }
      break;
    case '2':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        conversionMenu();
      }
      break;
    case '3':
      {
        sleep(Duration(milliseconds: 20));
        print(Process.runSync("clear", [], runInShell: true).stdout);
        menu();
      }
      break;
    default:
      {
        print('Escolha uma opção válida.');
      }
  }
}
