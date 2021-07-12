/* El "singleton" va a generar una sola instancia
   de una clase, aunque se creeen nuevas, es decir, 
   que las diferentes instancias creadas de la clase
   estaran centralizadas en el mismo espacio de 
   memoria, haciendo que el contenido de su estructura
   sea el mismo en cualquier lugar donde se utilize.

   la instruccion "singleton" se define en la clase
 */


main() {
  
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  print(spotifyService1 == spotifyService2);/* Aunque son "final"
                      quedan guardados en el mismo espacio de 
                      memoria y por eso se imprime como "true" */

  print(spotifyService1.url);
  print(spotifyService2.url); /* Al estar en el mismo espacio de
                      memoria imprime para los dos "print" la 
                      ultima url de la instancia, que es donde se
                      guardara toda la informacion */
}
