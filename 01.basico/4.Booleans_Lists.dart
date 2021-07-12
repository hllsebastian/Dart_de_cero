// BOOLEANS

main() {
  bool? isActive; // ademas de true y false aloja valores null
  print(isActive);

  bool isOk = true; //declarando valor TRUE
  bool isNotOk = !isOk;
  /*declarando valor FALSE,
                                se declara con ! */

  bool notOk = false;

  print('$isOk o $isNotOk o $notOk');

/*            LISTADOS: son arreglos. conjunto de 
                          datos que tiene algo en comun */

  List<String> villanos = ['Lex', 'Red Skull', 'Doom'];

  villanos[1] = 'Dr. Octopus'; /* cambiand un valor en listado*/

  print(villanos);

  String fruta1 = "piña";
  String fruta2 = "PIñA";

  if (fruta1 == fruta2) {
    print('true');
  }
}
