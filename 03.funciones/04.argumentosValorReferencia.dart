/*  Cuando la funcion trabaja con valores primitivos,
    se crea un espacio en memoria para estos y no son
    pasados por referencia
 */

String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto; /*es suficiente declarando "return texto.toUpeercase()," 
                  omitiendo la varible texto*/
}

Map<String, String> capitalPerrito(Map<String, String> mapaName) {

  mapaName = {...mapaName};//    Rompiendo la referencia

  mapaName['nombre'] = mapaName['nombre']?.toUpperCase() ?? 'No hay nombre';
  return mapaName;
}

main(List<String> args) {
  String nombre1 = 'Spike';
  String nombre2 = capitalizar(nombre1);

/*   print('$nombre1 \n $nombre2'); */


/*     Cuando se trabaja con objetos, Dart toma el valor
       del objeto y lo referencia, haciendo que las
       modificaciones que se le realizen sean tomadas
       en las diferentes variables que usen ese objeto.
       
       Se puede crear un nuevo mapa donde se guarde el
       valor del objeto si no se requiere referenciar.
       Se usa el operador Spread (exparsir), son "..."
       seguidos del nombre del argumento.
       */

  Map<String, String> perrito = {
    'nombre': 'Spike'
    };

  Map<String, String> llamandoPerrito = capitalPerrito(perrito);

  print('$perrito \n $llamandoPerrito');
}
