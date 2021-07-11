/* 
    La funcion de flecha es una funcion resumida

 */

main() {
  /* int resultado = sumarFlecha(10, 30);
  print(resultado); */

  List<int> listado = [3, 4, 5, 6, 6, 7, 1, 1, 9, 8];

  var listadoNormal = listado.where((numero) {
    return numero > 4;
  });

  var listadoFlecha = listado.where((numero) => numero > 4);

  print('$listadoNormal \n $listadoFlecha');

                            /* Los elemento iterables permiten
                              ser barridos o ejecutar una instruccion
                              de forma secuencial  */

  print(listado.toSet().toList());  // se convirtio a Set y luego a List
}

int sumarFlecha(int x, int y) => x + y; /*funcion flecha.
                                        Despues de declarar el
                                        argumento, se pone la flecha
                                        y se indica la instruccion */
