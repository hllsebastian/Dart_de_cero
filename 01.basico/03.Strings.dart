// se incializan con la palabra reservada "String"

main() {
  String nombre = 'Spike';
  String? name; // se pueden agignar variables nulas

  print(nombre);
  print(name);

  //  casos de uso de comillas sencillas Vs comillas dobles

  String perro1 = 'O\'Conor';
  /*el back slash ayuda a reconocer
                                la comilla sencilla como parte
                                del string. Se conoce como 
                                ESCAPAR UN CARTACTER */

  String perro2 = "O´Brayan";
  /* se puede usar la comilla doble 
                                para distinguir cadenas que usen
                                comillas simples */

  print(perro1 + ' ' + perro2);

  /* //    MULTILINEA e INTERPOLACION  la interpolacion 
            se hace con el signo $ */

  String multilinea = '''

    -Hola $perro1..! Como estas? 
    -Todo bien $perro2.. y vos?

  ''';
  /* // se antepone el signo $ a la variabe
                      que se va a interpolar */
  print(multilinea);
}
