/*  "switch" sirve para asignar valores (casos) que al cumplirsen van
      a ejecutar una instruccion
      
    estructura
                    switch () {
                      case (valor): { instruccion}
                      break; 
                      
                      default: "indicar cuando no se ejectuta
                                  la instruccion"
                      }
      
        */

/* paquete con funciones y propiedades matematicas */

import 'dart:math';

main() {
  int rnd = Random().nextInt(7);

  switch (rnd) {  
    case 0:
      {
        print('Es domingo');
      }
      break;

    case 1:
      {
        print('Es lunes');
      }
      break;
    case 2:
      {
        print('Es martes');
      }
      break;
    case 3:
      {
        print('Es miercoles');
      }
      break;
    case 4:
      {
        print('Es jueves');
      }
      break;
    case 5:
      {
        print('Es sabado');
      }
      break;

    default:
      print('No es un dia de la semana');
  }
}
