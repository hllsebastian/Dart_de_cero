//      definiendo MAPAS

main() {
  Map<String, dynamic> Ironman = {
    'Nombre': 'Tony Stark',
    'Poder': 'inteligencia y dinero',
    'Pais': 'Estados Unidos',
  };

  print(Ironman);

  /*         se creo el mapa como un new map para guardar
              posteriormente los artributos*/
  Map<String, dynamic> CapitanAmerica = new Map();

  CapitanAmerica.addAll({
    'Nombre': 'Steve',
    'Poder': 'Soportar la droga que le da super poder',
    'Pais': 'Estados Unidos',
  });

  print(CapitanAmerica);
}
