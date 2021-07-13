/*  El "extends" hace que una clase tenga las
    las mismas propiedades y metodos de otra
    clase   */

class Vehiculo {
   
   bool encendido = false;

   void encender() {
     print('Vehiculo encendido');
   }

   void apagado() {
     print('Vehiculo apagado');
   }
}

/*        Al extender las propiedades y metodos de
          la clase "Vehiculo" a la clase "Carro", en 
          "Carro" solo se ingresan el contenido que lo
          difiere de la clase "Vehiculo*/
class Carro extends Vehiculo {

  int km = 0;

} 

main () {

  final ford = new Carro();

  ford.encender();  
  ford.apagado(); /* Se puede acceder a los metodos de 
                  "vehiculo" por la instruccion "extends"
                  al crear la clase "Carro"*/

}

