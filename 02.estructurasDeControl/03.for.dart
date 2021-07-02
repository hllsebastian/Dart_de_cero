/*  ESTRUCTURA DEL CLICLO FOR

  permite repetir una instruccion, sin necesidad de escribir
  repetidamente un codigo

        for(i=0; i<10; i++)

          i=0 -> se indica desde que numero inicia el ciclo
          i<10 -> condicion limite para repetir el cilclo,
                    para este ejm 10
          i++ -> indicador de suma (mas 1) para dar continuidad
                   al ciclo
 */

import 'dart:io';

main() {
  stdout.writeln('Escriba el numero base');

  int base = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 1; i < 11; i++) {
    stdout.writeln('$base x $i = ${base * i}');
  }
}
