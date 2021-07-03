main() {
/*  A los ciclos se le pueden poner etiquetas para identificarlos,
    soretodo cuando hay anidamiento y se va a ejecutar una accion
    en algun ciclo en especifico

    se digita el nombre seguido de ":" antes de inciar el ciclo

 */

  outerloop: //                    etiquetamiento
  for (int i = 0; i < 5; i++) {
    print('valor i $i');
    innerloop: //                    etiquetamiento
    for (int j = 0; j < 4; j++) {
      print(j);

      //               uso de etiqueta para ejectura una instruccion
      if (j == 1) {
        continue innerloop;
      }
    }
    //               uso de etiqueta para ejectura una instruccion
    if (i == 2) {
      break outerloop;
    }
  }
}
