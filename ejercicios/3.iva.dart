/*  3. Se necesita hacer un programa que nos calcule el IVA de un producto 
teniendo en cuenta que vamos a manejar 3 países: 

      Colombia – 19% 
      Argentina 20%  
      Chile 9 %

• Tenga en cuenta que el valor y el país los debe ingresar el usuario y calcular
  el resultado, en caso de que el país ingresado no coincida se deberá notificar
  al usuario que el país no existe.
• Se espera un resultado similar a este ingresando un valor de 1000 “El IVA que 
  se le cobrará en COLOMBIA ese de 190 con base al total suministrado de 1000”. */


import 'dart:io';

paisValor(dynamic pais, dynamic valor) {

  stdout.writeln('Ingrese uno de los siguientes paises: Argentina (she), Chile (weon), Colombia (pa)' );
  pais = stdin.readLineSync();

  if (pais != "Argentina" && pais != "Chile" && pais != "Colombia") {
    
  } else {
    stdout.writeln('Ingrese el valor');
    valor = double.parse(stdin.readLineSync() ?? '0');
  }

  switch (pais) {
    case "Argentina":
      {
        double iva = valor * 0.20;
        print('En $pais el IVA es del $iva');
      }
      break;

    case "Chile":
      {
        double iva = valor * 0.09;
        print('En $pais el IVA es del $iva');
      }
      break;

    case "Colombia":
      {
        double iva = valor * 0.19;
        print('En $pais el IVA es del $iva');
      }
      break;

    default:
      print(
          'ERROR! \n El pais ingresado no esta en nuestro listado');
      paisValor(pais, valor);
  }
}

main() {
  paisValor('', '');
}