/* 4. Se necesita crear un programa que permita ingresar una lista de 
  estudiantes de 1 a N con su nota final (0,0 a 5,0) al finalizar dicho 
  ingreso el programa debe mostrar en pantalla:

    • Cuántos pasaron teniendo en cuenta que se pasar con una nota mayor a 3.8.
    • Cuantos quedaron para recuperación si la nota esta entre 2.5 a 3.8.
    • Cuantos perdieron si la nota está de 0,0 a 2,5. */

import 'dart:io';

                  /* se definio la clase Estudiante con los constructores
                    que definen las propiedades de la instancia estudiante
                    en los casos: gano, en recuperacion o perdio. Se definieron
                    las condiciones para filtrar el constructor apropiado con el
                    factory constructor */

class Estudiante {
  String? nombre;
  double?   nota;
  String?   tipo;

  Estudiante.paso(nombre, nota) {
    this.nombre =       nombre;
    this.nota   =         nota;
    this.tipo   = ' -> Corono';
  }
  Estudiante.recuperacion(nombre, nota) {
    this.nombre =                nombre;
    this.nota   =                  nota;
    this.tipo   = ' -> En recuperación';
  }
  Estudiante.yaper(nombre, nota) {
    this.nombre =          nombre;
    this.nota   =            nota;
    this.tipo   = ' -> Yaper  :( ';
  }
  Estudiante.error(nombre, nota, tipo) {
    this.nombre =        nombre;
    this.nota   =          nota;
    this.tipo   = 'ERROR \n Ingrese una nota entre 0.0 y 5.0';
    ingreso(nombre, nota, tipo);
  }

  factory Estudiante(String nombre, double nota, String tipo) {
    if (nota >= 0 && nota < 2.5) {
      return Estudiante.yaper(nombre, nota);
    } else if (nota < 3.9) {
      return Estudiante.recuperacion(nombre, nota);
    } else if  (nota > 3.8 && nota < 5.1) {
      return Estudiante.paso(nombre, nota);
    } else {
      return Estudiante.error(nombre, nota, tipo);
    }
  }
  

  String toString() => '$nombre $nota $tipo';

}

                              /* la funcion que llamara el main para correr
                              el programa. En esta se captan los datos del 
                              nombre y nota del estudiante en la instancia 
                              'estudiante', se guardan en la variable 'lista'
                              y luego se imprimen  */

ingreso(String nombre, double nota, String tipo) {
  
  final lista = <dynamic>[];
  String? next;
  
  do {
    stdout.writeln('\nIngrese el nombre del estudiante');
      nombre = stdin.readLineSync() ?? '';

    stdout.writeln('\n Ingrese nota del estudiante');
     nota = double.parse(stdin.readLineSync() ?? '');
     if (nota < 0.0 && nota > 5.0) {
       print('ERROR!! \n Ingrese una nota entre 0.0 y 5.0. Vuelva a intentarlo');
       ingreso(nombre, nota, tipo);
     }else
     {
      final estudiante = Estudiante(nombre, nota, tipo);
      lista.add(estudiante);
     }

    stdout.writeln(
        '\n*** Para continuar ingrese "1" \n ***Para imprimir listado ingrese cualquier boton');
    next = stdin.readLineSync();
  } while (next == '1');

  print(lista);
}


main() {
  ingreso('', 0,'');
}
