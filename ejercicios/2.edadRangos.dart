/* Crear un programa que te permita ingresar una cantidad de años y
 el programa te definirá en que categoría se considera según la edad:
• Prenatal va en números negativos desde -0,0 a 0,9.
• Bebé debe estar entre 0,0 y 1,00.
• Niño pequeño ente 3-5.
• Escuela primaria de 5-12.
• Adolescente 12-18.
• Adulto Joven 18-21

El resultado debería ser para un niño que tenga 4 años “La categoría 
según la edad es NIÑO porque tiene 4 años  */

import 'dart:io';

main() {
  stdout.writeln('¿Cual es tú edad?');

  double e = double.parse(stdin.readLineSync() ?? '0');
  int edad = e.round();

  switch (edad) {
    case 0:
      {
        String respuesta = edad >= -0.0 && edad <= 0.9 ? 'Es prenatal' : ' ';
        print(respuesta);
      }
      break;

    case 1:
      {
       String respuesta = edad >= 0.0 && edad <= 1.0 ? 'Es un baby' : ' ';
       print(respuesta);
      }
      break;

    case 2:
      {
       String respuesta = edad > 2 && edad < 6 ? 'Es niño porque tiene $edad años' : ' ';
       print(respuesta);
      }
      break;





      

    default:
      print('Ingrese una edad correcta');
  }
}
