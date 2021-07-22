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
  String?  producto;
  double  valor = 0;
  double    iva = 0;
  double  bruto = 0;
  double?      neto;
  List<dynamic> list = [];

  Mercado(this.producto, this.valor) {
    this.producto =      producto;
    this.valor    =         valor;
    this.iva      =  valor * 0.19;
    this.bruto    =         valor;
    this.neto     =   bruto + iva;
  }

  


  @override
  String toString() => ''' 
           
      PRODUCTO      VALOR       IVA       VALOR BRUTO     VALOR NETO 
      $producto        $valor     $iva        $bruto           $neto''';
}

mercado(String producto, double valor) {
  final lista = <dynamic>[];
  String next;
  //dynamic listaMerc = mercado;

  do {
    stdout.writeln('¿Cual es el nombre del producto?');
    producto = stdin.readLineSync() ?? '';

    stdout.writeln('Ingrese el valor');
    valor = double.parse(stdin.readLineSync() ?? '');

    final mercado = Mercado(producto, valor);
    lista.add(mercado);

    stdout
        .writeln('Digite 1 para continuar o cualquier boto para mostrar lista');
    next = stdin.readLineSync() ?? '';
  } while (next == '1');

  print(lista);
}

main() {
  mercado('', 0);
}
