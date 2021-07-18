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

print('imprime los datos de perrito: $perrito');
print('cantidad de elementos en perrito: ${perrito.length}');
print('manejar las llaves de perrito: ${perrito.keys}');
print('manejar los valores de perrito: ${perrito.values}\n');

perrito.addAll(direccion);
print('adAll("mapa a agregar") adicionando los valores de un map a otro  $perrito');

perrito.remove('pais');
print('\n "remove" elimina el "key" de una mapa: $perrito');


perrito.removeWhere((key, value) => (key == 'ciudad') ? true : false);

print(' "removeWhere (key, value)" para eliminar con key o value$perrito');

perrito.removeWhere((key, value) {
  if (value != 'Spike') {
    return true;
    } else {
        return false;
    }  
});

print('....borrando usando condicion de valor: $perrito');

}

