/* los "mixins" son similares a los "extends" 
le otorgan propiedades y metodos de una clase
a otra.

Cualquier clase puede ser un mixin.

Los mixin no pueden ser instanciados como sucede
con las clases abstractas y ademas no pueden tener
constructores.
 */

mixin Logger {
  // declarando una clase "mixin"

  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy ::: $texto');
  }
}

mixin Logger2 {
  // declarando una clase "mixin"

  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy ::: $texto');
  }
}

/* Con el "with se indica a una clase que usara
    el mixin de otra. Si son varios mixin, se pueden
    separar con "," */
abstract class Astro with Logger, Logger2 {
  

  String? nombre;

  Astro() {
    imprimir('---Init del Astro---');
  }

  void existo() {
    imprimir('---Ser celestial---');
  }
}

class Asteroide extends Astro {

  Asteroide(nombre){
    this.nombre = nombre;
    imprimir('Soy $nombre');
  }  
}


main() {
  final ceres = new Asteroide('Ceres');
}
