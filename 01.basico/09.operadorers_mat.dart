// simbolos para realizar operaciones aritmeticas y logicas

main() {
  int a = 10 + 5; //    suma
  a = 10 - 3; //    resta
  a = 7 * 8; //    multiplicaion

  int b = 10 ~/ 2; // division para obtener resultado con numeros enteros ~/

  double c = 16 / 4; // division para obtener resultado con numeros decimales /
  c = 16 % 3;
  /* para obtener el residuo de una division, debe ser con un dato
                  tipo double % */

  c = -c; // para hacer la negacion de un numero -exp

  int d = 2;
  d++; // para sumar una unidad a la variable
  d--; // para restar una unidad a la variable
  d += 2; // para que la misma variable se sume a un valor
  d -= 2; // para que la misma variable se reste a un valor
  d *= 2; // para que la misma variable se multiplique a un valor
  double e = 3;
  e /= 2; // para que la misma variable se divida a un valor

//      OPERADORES DE ASIGNACION

  int f = 2; //   operador de igualdad

  int? g; //  para asignar un valor a una variable nula ??=
  g ??= 10;
  /*  indica que si una variable es nula se le puede 
                dar el valor declarado   ??=  */
  print(g);

//      OPERADORES CONDICIONALES

  /*  se esta declarando una variable tipo cadena, con un valor
      condicional, usando los simbolos ">, ?, :". Las lineas se
      leen asi:
            si h es mayor a 20 entonces __?__, resp es igual a 
            'h es mayor a 20', si no __:__, resp es igual a 'h es menor a 20 )' */

  int h = 30;
  String resp = h > 20 ? 'h es mayor a 20' : 'h es menor a 20';

  print(resp);

/*       OPERADORES RELACIONALES
              todos retornan valor booleano 
              
                >   mayor que
                <   menor que
                >=  mayor o igual que
                <=  menoro igual que
                ==  revisa si dos objetos son iguales
                !=  revisa si dos objetos son diferentes                          
              */

  String mascota1 = 'Spike'; // comparando igualdades
  String mascota2 = 'Ciro';

  print(mascota1 == mascota2); // consola mostrara false

  print(mascota1 != mascota2); // consola mostrara true
  /*           el ! es una negacion, el != quiere decir 
                DIFERENTE*/

  int x = 10;
  int y = 100;

  print(x < y); // true
  print(x > y); // false
  print(x >= y); // false
  print(x <= y); // true

  //             OPERADOR DE TIPO

  int i = 10;
  String j = '10';

  print(i is int); // i es entero = true
  print(j is! int); // j no entero = false
  // con el "is!" se esta diciendo, no es
}
