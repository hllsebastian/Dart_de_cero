main() {

final perrito = {

  'nombre'   : 'Spike',
  'apellido': 'hocicoLoco',
  'edad'     :  6 
};

final direccion = {

  'ciudad': 'Dublin',
  'pais'  : 'Irlanda'
};

/* para hacer un barrido de los valores pares en el mapa. Este
   metodo no regresa nada, en cuanto a mutar valores */
perrito.forEach((key, value) {
  print('key: $key || value: $value');
 });

/* se puede mutar los valores del mapa haciendo un barrido en estos
  usando "map", sinembargo para ver el cambio en los valores debe
  crearse un nuevo mapa, donde se guarde dicha funcion*/

final nuevoMapa = perrito.map((key, value) => MapEntry(key, value.toString().toUpperCase()));

print(nuevoMapa);


}


