/* 
      Las propiedades privadas solo pueden ser usadas
      contexto en las que son definidas
 */

class Persona {
  String? _nombre; /*se indica que una propiedad es privada
                      con un guion bajo incial "_" */
  int?    edad;
  String? ciudad;

  String toString() => 'hola $_nombre';
}

main() {
  final personaVaga = Persona();

  personaVaga
    .._nombre = 'Johny'
    ..edad = 33
    ..ciudad = 'Medellin';

  print('Hola $personaVaga El Vago Oquendo\n');
  print('${personaVaga._nombre} ${personaVaga.edad} ${personaVaga.ciudad}');
}
