/*      Assync-await 
        
        Sirve para refactorizar el codigo usado en el Future
        cuando maneja archivos como argumentos

*/

import 'dart:io'; /* para usar el tipo "file" se requiere
                    impotar este paquete */


/*  Se uso el tipo "File" para acceder a la ruta en la que
    esta guardado un archivo que luego se usara como argumento*/
main() async { //se indica como "async", para que deje usar el "await"

  String path = Directory.current.path + '\\assets\\perrit@s.txt';

/*   leerArchivo(path).then(print);/* el ".then" se referencia al "return
                                  de "leerachivo", es decir, se ejecutara
                                  cuando se resuelva esta funcion. */ */

   String texto = await leerArchivo(path);/* El await permitira resolver 
                                      primero el tipo "Future". En este caso
                                      lo guardar en la variable "texto" */
   print(texto);


  print('Mensaje que se lee primero (luego leera el archivo)');
}

/* El "async" indica que una funcion va a retornar un "Future"*/
leerArchivo(String path) async {

    File file = new File (path);
    return file.readAsString();
}


