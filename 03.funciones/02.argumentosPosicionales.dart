/*       Los ARGUMENTOS en las funciones so los valores que
         se le dan a esta.
       
         En las funciones se tienen argumentos posicionales 
         y por nombre. Los argumentos posicionales son variables
         obligatorias para ingresar en la funcion.

         Lo ideal es que las variables de los argumentos
         esten tipadas.
       
       */

/*                                Se declaro la funcion "saludar"
                                  como "void" porque no le indicamos
                                  que retornara un valor.
                                  Se especifico el tipo de dato
                                  "String" para el argumento "mensaje".
                                  Tiene una posicion: "mensaje". */
/* void saludar(String mensaje {
  print(mensaje);
} */

/*                             Se uso el metodo main para invocar la
                               funcion anterior. Como argumento 
                               recibe el valor "Hola".*/

/*                                  Cuando se declara un argumento nulo,
                                    al llamar la funcion debe ingresarse
                                    valor "null", en caso de no tener un
                                    valor a ingresar, para que asi no 
                                    arroje error por el nullsafety  */
void saludoNull(String? mensaje) {
  print(mensaje);
}

/* main(List<String> args) {
  saludoNull(null);        // aca se ingresa valor null
}
 */

/*Se declaro la funcion "argumentoOpcional" con tres posiciones: mensaje, nombre y edad.
  las posiciones de nombre y edad se declararon como opcionales agrupandolas en "[]", 
  dandoles una valor a nombre y declarando como null edad.


 */
void argumentoOpcional(
  String? mensaje,
  [String nombre = '<ingrese nombre>', 
  int? edad]
  ) {
  print('$mensaje, $nombre, $edad');
}

main(List<String> args) {
  argumentoOpcional('Hola');
}
