/*   los CONSTRUCTORES son metodos que se llaman para
  crear una instancia de una clase. En este se establecen
  las propiedades que seran ingresadas como argumentos para
  asi definir la instancia. */

class Carro {
//                  PROPIEDADES
  String _propietario = 'Sin registro';
  String marca = 'Sin registro';
  int? puertas;

//                  GET Y SET
  String get info => 'Hola $_propietario, tienes un ${marca.toUpperCase()}\n';

  set info(String owner) => owner = _propietario;

//                CONSTRUCTOR
  /* Carro(String propietario, String marca, int puertas) {
    this._propietario = propietario;
    this.marca = marca;
    this.puertas = puertas;
  } */
  Carro(this._propietario, this.marca, this.puertas);
  /* Estos argumentos
                                  pueden ser definidos por posicion, nombre
                                  u opcionales */

//          constructor con nombre  PENDIENTE POR RESOLVER
  Carro.propietario2({this.marca}) {
    this._propietario = "Maria";
    this.marca        = marca;
    this.puertas      = 4;
  }

//                  METODO
  String toString() => 'Su $marca es un $puertas puertas.';
}

main() {
  final propietario1 = Carro('Spike', 'Toyota', 4);

  print('${propietario1.info} $unPropietario');
}
