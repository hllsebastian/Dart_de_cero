/* Se importa este paquete "dart:io" para usar las funciones de 
  mostrar informacion e ingresar datos
 */
import 'dart:io';

main() {
  /* para immprimir en la terminal. Se puede con "stdout.write"
      o "stdout.writeln". 
      
      std -> standar
      \n -> dentro de la cadena hace salto de linea*/

  stdout.write('Hola mundo ');
  stdout.writeln('\n¿Cuál es tu nombre?\n');

  /* para ingresar datos o leer informacion. 
  
    stdin.readLineSync ->  detiene la ejecucion del programa y
                        espera una entrada del usuario.

                        La varible "nombre" se declaro como nula
                        porque "stdin.readLineSync" es nulo, hasta
                        que reciba informacion del usuario. 
                       */

  String? nombre = stdin.readLineSync();

  stdout.write('\nTu nombre es $nombre');
}
