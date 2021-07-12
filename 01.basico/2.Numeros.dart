/*    Es recomendable ser especifico con el tipo de dato numero al 
      declarar la variable (int, double, etc.)  */

main() {
  var a = 5;
  /* al declarar una varible con 'var', esta Dart asignara
                  un tipo de dato a la varible, en este caso 'int' */
  int b = 7;
  double c = 9.1;

  int? d = null;
  /* Cuando no se conoce el valor iniciar de una variable se 
                usa el signo ? y se le asigna el valor null */

  print(a + b + c); // hizo la  suma, con las comas no concatena, sale error

  print(a);
  print(b);
  print(c);
  print(d);

  int _a = 10;
  /* Se pueden asignar variables que inicien con guion bajo
                    o signo dollar */
  double $b = 2.4;
  print(_a + $b);
}
