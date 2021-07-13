/* el "super constructro" se usa para llamar a los argumentos
    del constructor de la clase padre */


class Persona {

  String nombre;
  int edad;

  Persona (this.nombre, this.edad);

  void imprimiDatos () => print('Nombre: $nombre\n Edad: $edad');
} 

/*    Cuando se extiende la clase "Persona" a la clase "Cliente",
      "Cliente" arroja error porque exinten argumentos en el
      constructor de "Persona", por tanto se debe crear un 
      constructor en "Clientes que se acoplen a los de "persona" */
class Cliente extends Persona {

  String? direccion;
  List? ordenes = [];

/*   Los dos puntos en el constructor ejecutan el proceso 
     antes de crear la instancia. 
     No importar el orden de los argumentos que se den al crear
     el constructor en la clase hija, pero al llamar el cosntructor
     de la super clase, deben ingresarse con el orden de dicha clase */
  Cliente (int edadAct, String nombreAct):
  super (nombreAct, edadAct);
}


main() {

  final person1 = new Cliente (15, 'Edd');
  
  person1.imprimiDatos();
}


