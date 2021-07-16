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

rangoEdad() {
  stdout.writeln('Ingrese un rango de edad desde -0.0 hasta 21');

  double edad = double.parse(stdin.readLineSync() ?? '0');

  if (edad == -0.0 && edad < 1.0) {
    print('Es un prenatal');
  } else if (edad >= 0.0 && edad < 0.9) {
    print('Es un bebe');
  } else if (edad > 2 && edad < 6) {
    print('La categoria segun la edad es niño porque tiene $edad años');
  } else if (edad > 4 && edad < 13) {
    print('Es un niño de escuela primaria');
  } else if (edad > 11 && edad < 18) {
    print('Es un adolescente');
  } else if (edad > 17 && edad < 22) {
    print('Es un adulto joven');
  } else {
    stdout.write('Error!!\n');
    rangoEdad();
  }
}

main() {
  rangoEdad();
}
