/* 5. Se necesita crear un programa que permita ingresar los productos 
   de 1 a N de un mercado con su valor y cantidad dónde:

• Se debe mostrar el total del mercado calculando cantidad y valor, 
  teniendo en cuenta un IVA del 19%
• Se debe mostrar el total bruto y neto, al igual que el valor del IVA
• Se debe mostrar el producto más caro y el más barato.
• Se debe crear una funcionalidad que permita listar todos los productos
  ordenados de mayor a menor precio que fueron incluidos en el mercado.  */

import 'dart:io';

/* class Lista {
  List<dynamic> lista = [];

  Lista(this.lista);

  static void add(Mercado mercado) {}


  @override
  String toString() => lista.toString();
} */

class Mercado {
  String? producto;
  double? valor;
  double? total;
  List<dynamic> lista = [];

  Mercado.lista([this.producto, this.valor]);

  get info () => print(lista);

  @override
  String toString() => '$producto $valor $total $lista';
}

mercado(String producto, double valor) {
  //final lista = <dynamic>[];
  
  String next;
  do {
    stdout.writeln('¿Cual es el nombre del producto?');
    producto = stdin.readLineSync() ?? '';

    stdout.writeln('Ingrese el valor');
    valor = double.parse(stdin.readLineSync() ?? '');

    final estudiante = Mercado;
    Mercado.lista(producto, valor);

    stdout
        .writeln('Digite 1 para continuar o cualquier boto para mostrar lista');
    next = stdin.readLineSync() ?? '';
  } while (next == '1');

}

main() {
  mercado('', 0);
}
