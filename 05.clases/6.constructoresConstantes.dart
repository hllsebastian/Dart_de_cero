/* Los CONSTRUCTORES CONSTANTES cuando se ejecutan son
   son guardados en el mismo lugar de memoria, en cambio
   los final se guardan en lugares diferentes, esto se 
   demuestra cuando se hace comparaciones de igualdad  */


class Ubicacion {

  final double lat;
  final double lng;

  const Ubicacion(this.lat, this.lng);

}

main() {

  final lasMalvinas1 = Ubicacion(20.3001, 19.2001);
  final lasMalvinas2 = Ubicacion(20.3001, 19.2000);
  final lasMalvinas3 = Ubicacion(20.3001, 19.2000);

    print('tipo final\n ${lasMalvinas1 == lasMalvinas2}' );
    print('${lasMalvinas2 == lasMalvinas3}\n' );

  const sanAndres1 = const Ubicacion(19.2044, 10.2000);
  const sanAndres2 = const Ubicacion(19.2044, 10.2001);
  const sanAndres3 = const Ubicacion(19.2044, 10.2001);

    print('tipo const\n ${sanAndres1 == sanAndres2}' );
    print({sanAndres2 == sanAndres3});
    
}