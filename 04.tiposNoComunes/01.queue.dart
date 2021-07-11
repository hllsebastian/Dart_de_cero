/*   El tipo de dato "queue" es util para procesar datos
     de forma consecutiva 
     */

import 'dart:collection';/* En este paquete se encuentra
                            el tipo de dato "queue" */
main() {

  Queue <int> cola = new Queue(); /* Se asigno a la variable
                                  el tipo de dato "queue" */

  cola.addAll([5, 10, 15, 20, 20]);

  print('$cola, cola es de tipo queue: ${cola is Queue}\n');

  Iterator i = cola.iterator; /*Se usa el tipo de variable
                                "iterator" para asignar a 
                                "i", el indice que barrera
                                 las posiciones en "cola" */

                        /* Aca se da la instruccion de
                          imprimir la posicion de "i" 
                          mientras "i" pasa a la siguiente
                          posicion  */
  while(i.moveNext()) {   
    print(i.current); 
  };
}
