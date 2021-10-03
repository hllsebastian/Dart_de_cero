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
  final lista = <Map>[];

  Lista.add(Mercado(producto, valor));

  @override
  String toString() => '$lista';
}
 */

/*se declara la clase 'Mercado' con el constructor que 
                          ayuda a definir las propiedades de iva, valores bruto 
                          y neto de cada producto
                         */
class Mercado {
  String? producto;
  double valor = 0;
  double iva   = 0;
  double bruto = 0;
  double? neto;
  List<dynamic>? lista;

  Mercado(this.producto, this.valor) {
    this.producto = producto;
    this.valor    = valor;
    this.iva      = valor * 0.19;
    this.bruto    = valor;
    this.neto     = bruto + iva;
  }

/*   @override
  String toString() => ''' 
           
      PRODUCTO      VALOR       IVA       VALOR BRUTO     VALOR NETO 
      $producto        $valor     $iva        $bruto           $neto'''; */
}

/* funcion listado que llamara el main. Aca se ingresara
                   el nombre del producto y el valor, que seran guardados en
                   un listado tipo mapa, al finalizar su ejecucion imprimira 
                   el listado. */

listado(String producto, double valor) {
  String next;
  final lista = <Map>[];

  do {
    stdout.writeln('¿Cual es el nombre del producto?');
    producto = stdin.readLineSync() ?? '';

    stdout.writeln('Ingrese el valor');
    valor = double.parse(stdin.readLineSync() ?? '');

    final mercado = Mercado(producto, valor);
    lista.add({
      'producto': mercado.producto,
      'valor'   : mercado.valor,
      'iva'     : mercado.iva,
      'bruto'   : mercado.bruto,
      'neto'    : mercado.neto,
    });

    stdout.writeln(
        'Digite 1 para continuar o cualquier botón para mostrar lista');
    next = stdin.readLineSync() ?? '';
  } while (next == '1');

  double total = 0;
  for (var element in lista) {
    total = total + element.values.last;

    print(element);
  }
  print("El total a pagar seria:  \$${total}");
}

main() {
  listado('', 0);
}
