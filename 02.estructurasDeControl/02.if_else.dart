/*  ESTRUCTURA DE CONDICION

    if ("condicion") {
      "instrucion si cumple la condicion"
    } else {
      "instruccion si no cumple la condicion"
    }

 */

import 'dart:io';

main() {
  stdout.writeln('¿Cuál es tu edad?');

  int edad = int.parse(stdin.readLineSync() ?? '0');

  if (edad >= 21) {
    stdout.writeln('Eres una chimba de ciudadano');
  } else if (edad >= 18) {
    stdout.writeln('Eres mayor de edad');
  } else if (edad >= 0) {
    stdout.writeln('Eres un baby');
  }
}
