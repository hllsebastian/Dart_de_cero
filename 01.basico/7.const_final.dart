/*  VAR deja modifcar   variable despues de su inicializacion
    CONST se usa para valores que no se van a modificar
    FINAL se usa para valores que sí pueden modificarse */

main() {
  /*  se puede declara el tipo de variable CONST o  FINAL antes
      del = o depues  */

  final List<String> a = ['leche', 'queso', 'arepas'];
  List<String> b = const ['leche', 'queso', 'arepas'];

  a.add('huevos');
  b.add('huevos'); // muestra error si se modifica un CONST

  print(''' $a, $b''');
}
