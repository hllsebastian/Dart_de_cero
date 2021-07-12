/* 
                            Clases
 
  El nombre de la clase inicia con letra capital. La estructura
  de la case seria:
                      +Campos o propiedades.
                      +Gets y sets.
                      +Constructores
                      +metodos         */

import 'clases/perritos.dart'; /* Se importo del archivo creado 
                                  para las clases */

main() {
  final perrito = new Perrito(); //new es opcional

  perrito..nombre = 'Spike'
         ..edad = 7
         ..bio = 'Medallo'; /* se puede usar ".." para simplificar
                              el ingreso de valores en las propiedades */

  print(perrito); /* Se borro el "toString" porque esta implicito
                      que retorna un String*/
}




