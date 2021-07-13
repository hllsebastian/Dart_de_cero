class Persona {

  String nombre;
  int edad;

  Persona (this.nombre, this.edad);

  void imprimirDatos () => print('Nombre: $nombre\n Edad: $edad');
} 

class Cliente extends Persona {

  String? direccion;
  List? ordenes = [];


  Cliente (int edadAct, String nombreAct):
  super (nombreAct, edadAct);

              /* Se hace "@override" para indicar que se
              sobreescribio un metodo de la superclase. en
              estos casos solo se ejecutara el metodo de la 
              clase hija. Si quiere ejecutarse el metodo de
              la super clase, debe llamarse con "super" */
  @override
  void imprimirDatos () {
    super.imprimirDatos();
    print('Cliente: $nombre (edad: $edad)');
  }
  
}


main() {

  final person1 = new Cliente (15, 'Edd');
  
  person1.imprimirDatos();
}


 