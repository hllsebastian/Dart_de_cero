/* El "future" es una tarea asincrona que se resolvera en
   un futuro

    El future puede resolver cualquier tipo de dato.
 */

main() {
  /*  Estructura de un "future" sencillo:
              
  Future<"tipo de variable que retornara"> 
  "nombreDeVariable" = Future.delayed(Duration)("medida": cantidad),
  (){"instruccion"};
              
               */
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues'); // se imprime 3 segundos despues
    return 'retorno del future';
  });

  timeout.then((texto) => print(texto)); //retona el future, estructura normal
  timeout.then(print);  //retona el future, estructura abreviada

  print('Mensaje antes del future (cuenta 3 segundos)'); // se imprime primero
}
