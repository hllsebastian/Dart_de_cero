/*  Cuando se define un tipo "static", se podra acceder
    a las propiedades de las clases sin necesidad de 
    crearles una instancia.

    Lo ideal es que se use el "static" solo para lectura
 */

class Herramientas {

  static List<String> listado = ['martillo', 'llave', 'clavos'];

  static void impriListado () => listado.forEach(print);
}

main() {

 Herramientas.impriListado();

}

