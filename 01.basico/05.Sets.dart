/* Se forman con la palabra Set, seguido del tipo de dato y 
  y el nombre del set, los datos van entre {} */

main() {
  Set<String> villanos2 = {'Lex', 'Red Skull', 'Doom'};

  villanos2.add('Dr. Octopus'); // para adicionar un elemento

  print(villanos2);

  //  Cambiando una LISTA a SET y viseversa

  List<String> villanos = ['Lex', 'Lex', 'Red Skull', 'Doom'];

  print(villanos);

  /* metaodo para cambiar el LISTADO a SET */
  Set<String> villanosSet = villanos.toSet();

  print(villanosSet);
  //metaodo para cambiar el LISTADO a SET
  print(villanosSet.toList());
}
