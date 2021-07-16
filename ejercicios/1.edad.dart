/* Crear un programa que te permita ingresar una cantidad de años
 y el programa te diga si es menor o mayor de edad, teniendo en cuenta
que se considera que si es mayor a 18 años es un mayor de edad.
El resultado debería ser para una edad de 15 años “Usted es menor 
de edad porque tiene 15 años”. */

import 'dart:io';


main() {
  stdout.writeln('¿Cual es tú edad?');

  int edad = int.parse(stdin.readLineSync() ?? '0');

  String respuesta = edad > 17 ? 
  'Eres mayor de edad' : 
  'Eres menor de edad porque tienes $edad años';

  print(respuesta);
}
