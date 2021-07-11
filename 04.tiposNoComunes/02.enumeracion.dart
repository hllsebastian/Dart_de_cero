
/* Se uso el tipo de dato "enum" para declarar una variable con diferentes
   valores.
                      
   El nombre de la variable "enum" se declara con la letra incial capitalizada:
   "Audio"  */
   
enum Audio {     
  bajo,
  medio,
  alto,
}

main() {
                      /* Se puede usar alguno de los valores del
                        "enum" ingresando el nombre declarado seguido
                         de un "." y seguido del valor: "Audio.bajo" */
  Audio volumen = Audio.bajo;

  switch (volumen){

    case Audio.bajo : print('Volumen bajo'); break;
    case Audio.medio: print('Volumen medio'); break;
    case Audio.alto : print('Volumen alto'); break;
  }
}


