main() {
  /*  
        El "continue" hara que se omita un ciclo segun la 
        condicion que se especifique, sin para los demas ciclos

        El "break" detendra los ciclos cuando se cumpla la condicion
        especificada 
       
          */

  for (int i = 0; i < 10; i++) {
    //               CONTINUE
    if (i == 4) {
      continue;
    }
    //                BREAK
    if (i == 7) {
      break;
    }
    print(i);
  }
}
