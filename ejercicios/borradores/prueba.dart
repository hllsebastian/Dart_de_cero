/* 4. Se necesita crear un programa que permita ingresar una lista de 
  estudiantes de 1 a N con su nota final (0,0 a 5,0) al finalizar dicho 
  ingreso el programa debe mostrar en pantalla:

    • Cuántos pasaron teniendo en cuenta que se pasar con una nota mayor a 3.8.
    • Cuantos quedaron para recuperación si la nota esta entre 2.5 a 3.8.
    • Cuantos perdieron si la nota está de 0,0 a 2,5. */

import 'dart:io';

/* class Estudiante {
  String? nombre;
  double? nota;

  Estudiante(this.nombre, this.nota);
}
 */
ingreso(String nombre) {
  stdout.writeln('Ingrese el nombre del estudiante');
  nombre = stdin.readLineSync() ?? '';

  stdout.writeln('1 para guardar');
  final String? guardar;
  guardar = stdin.readLineSync();

      final lista = <dynamic>[
    <String, dynamic>{'nombre': nombre}];

  if (guardar == '1') {
    lista.add(nombre);

    stdout.writeln('1 para ingresar otro estudiante, si no cualquier boton');
    String? continuar;
    continuar = stdin.readLineSync();

    if (continuar == '1') {
      ingreso(nombre);
    } else {
      print(lista);
    }
  }


}

/* notas(String nombre, double nota) {
  if (nota > 3.8 && nota < 5.1) {
    print('$nombre paso con una nota de $nota');
  } else if (nota < 3.9) {
    print('$nombre recuperacion');
  } else if (nota < 2.5) {
    print('$nombre perdio');
  } else {
    print(
        'ERROR!! \n Ingrese una nota entre 0.0 y 5.0. Vuelva a intentarlo...');
    ingreso(nombre, nota, '');
  }
} */

main() {
  ingreso('nombre');
}