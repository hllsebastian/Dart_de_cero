class Perrito {  // se crea la clase Perrito
  String? nombre; // propiedades o atributos
  int? edad;
  String? bio;

  @override //metodo
  /* String toString() {
    return 'Hola $nombre de $bio'; */
    String toString() =>  'Hola $nombre de $bio con $edad años';
  }