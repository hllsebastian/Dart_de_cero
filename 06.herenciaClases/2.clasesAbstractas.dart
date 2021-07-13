/*  Las clases abstractas solo sirven para heredar
    sus propiedades y atrituos a otras clases, mas
    no para crear nuevas instancias de la clase 
    declarada como abstracta*/


abstract class Vehiculo {// se definio la clase abstracta
   
   bool encendido = false;

   void encender() {
     print('Vehiculo encendido');
   }

   void apagado() {
     print('Vehiculo apagado');
   }

   bool revisarMotor(); /* al adicionar un metodo en las clases
                           herederas va a salir error.  */
}

class Carro extends Vehiculo { /*error porque no se ha
                              adicionado el nuevo metodo que se 
                              definio en la super clase */

  int km = 0;

  @override  /*  se soluciona el error sobreescribiendo el metodo 
                de la super clase en la clase hija. Se deja el 
                "@override" para enteder que se sobreescribio y 
                como buena practica*/
  bool revisarMotor() {
    throw UnimplementedError();
  }

} 

main () {

  final ford = new Vehiculo();/* hay error si se usa la clase
                              abstracta para crear una nueva
                              instancia */

  ford.encender();  
  ford.apagado(); /* Se puede acceder a los metodos de 
                  "vehiculo" por la instruccion "extends"
                  al crear la clase "Carro"*/

}

