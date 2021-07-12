/* El constructor factory regresa una instancia de
   la clase, sea nueva o existente, para identificar
   el constructor de la clase que mejor se adapte
   a una necesidad. No la crea, solo la regresa. */

class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo;    /* cuadrado if base = altura;
                   rectangulo if base != altura; */

//          Se crearon los constructores que regresara el factory
  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }
  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

//          Aca se creo el CONSTRUCTOR FACTORY
  factory Rectangulo(int base, int altura) {
    if (base == base) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  @override
  String toString() {
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}.toString();
  }
}

main() {

  final figura = Rectangulo(10,10);
  print(figura);

}
