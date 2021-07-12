/* 
      Los get y sets son metodos que simulan una propiedad.

      Los gets deben retornar un valor y van entre "{}"

      El setter es el mecanismo para establecer un valor a
      una propiedad, osea, un metodo definido en la clase para
      establecer el valor.
      El set solo estableces valores, no los retona. Tambien
      van entre "{}".

 */

class Gatito {
  //                      PROPIEDADES
  String? nombre;
  int? edad;
  String ciudad = 'sin registro';

  //                      GET Y SETS
  String get info => 'Eres del ${ciudad.toUpperCase()}'; //definiendo el get
  // return 'Eres del ${ciudad.toUpperCase()}';

  set info(String texto) => ciudad = texto; // definiendo el set
  /* set info(String texto) {
    ciudad = texto;
  } */

  //                        METODOS
  String toString() => 'Hola $nombre\n';
}

main() {
  final gatoZ = Gatito();

  gatoZ
    ..nombre = 'Zeus'
    ..ciudad = 'El Cairo'
    ..edad = 3;

  gatoZ.info = 'Me pase a Lyon'; // usando el set

  print('$gatoZ ${gatoZ.info}'); // usando el get
}
