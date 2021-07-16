main() {
  List<int> lista1 = [1, 2, 3, 4];
  List<int>? lista2;
  List<int> lista3 = [10, 2, 7, 0];
  List<String> nombres = ['Spike', 'Ciro'];

  print('trabajar List como Map: asMap -> ${lista1.asMap()}\n');
  Map nombreMap = nombres.asMap();
  print('nombreMap = ${nombreMap[0]} ');

  print('buscar elemento por indice: indexof -> ${nombres.indexOf('ciro')}\n');

  int mayor3 = lista1.indexWhere((numero) => (numero > 3) ? true : false);
  print(
      'barre el listado y se le puede dar instruccion: indexWhere-> ${mayor3}\n');

  print(
      'elimina un elemento del conjunto: remove => ${nombres.remove('Ciro')}');
  print('mapa luego del remove => $nombres \n');

  lista1.shuffle();
  print('desordenar aleatoriamente: shuffle ->${lista1} ');
  lista3.sort();
  print('ordenar elementos: sort -> ${lista3} ');
  print('ordenar elementos al reves: reversed -> ${lista3.reversed} ');
  print('''cuando un grupo de elementos aparece con () es un iterable, como 
  el ejemplo del reversed''');
  print('regresar el reversed al list: toList -> ${lista3.reversed.toList()}');
  
}
