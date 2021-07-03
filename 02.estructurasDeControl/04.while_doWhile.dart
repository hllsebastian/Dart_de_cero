import 'dart:io';

main() {
/*   el ciclo "while" se usa cuando se conoce concretamente la 
     varible que va a condicionar la detencion de un ciclo.

      estructura:
        while("condicion bool para continuar el ciclo") {
         "instruccion a seguir"
      }
 */

/*   String next = 'y';
  int cont = 0;

  while (next == 'y') {
    cont++;
    stdout.writeln('Contador: $cont');
    stdout.writeln('¿next page y/n?');
    next = stdin.readLineSync() ?? 'n';
  } */

/* 
    El ciclo "do while" ejecutara la instruccion de inmediato sin evaluar
    la condicion, mientras el ciclo "while" evaluara primero si cumple la 
    condicion para ejectur la instruccion

    estructura del "while do"

    do { instruccion } while (condicion para continuar el ciclo)

 */

  String continuar = 's';
  int contador = 0;

  do {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('¿Desea continuar s/n?');
    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 's');
}
