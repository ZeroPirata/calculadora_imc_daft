import 'dart:io';
import 'dart:convert';

String stringConsole(String text) {
  print(text);
  return stdin.readLineSync(encoding: utf8) ?? "";
}

double doubleConsole(String text) {
  double value;
  try {
    value = double.parse(stringConsole(text));
    return value;
  } catch (e) {
    print("Por favor, insira um valor numerico válido.");
    return doubleConsole(text);
  }
}
