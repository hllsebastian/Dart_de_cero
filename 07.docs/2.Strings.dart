main() {
  String nombre = 'Spike';
  String especie = 'perro';
  String nombreCompleto = '$nombre' ' ' 'el perro';

  print('Longitud caracteres: length -> ${nombre.length}');
  print('contiene: contains -> ${especie.contains('e', 1)}');
  print('Termina con: endswith -> ${nombre.endsWith('e')}');

  print('Completar una largo: padLeft ${especie.padLeft(10, '--')}');
  print('Completar una largo: padRight ${especie.padRight(10, '--')}');

  print('operador[]: conocer elemento en una ubicacion -> ${nombre[3]}');
  print('operador *: multiplica el String  -> ${nombreCompleto * 2}');

  print('''para reemplazar todo: replaceAll 
                          -> ${nombreCompleto.replaceAll('e', 'o')}''');

  print('cortar partes: substring -> ${nombre.substring(0, 2)}..');
  print('posicion del elemento: indexOf -> ${nombreCompleto.indexOf(' ')}');
  print('posicion del elemento: split -> ${nombreCompleto.indexOf(' ')}');
  print('''Combinand metodos para obtener la utlima letra de la 
        variable en mayusculas: 
        ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}''');
}
