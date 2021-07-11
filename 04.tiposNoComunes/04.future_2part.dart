//     Usando "future" con archivos

import 'dart:io'; /* para usar el tipo "file" se requiere
                    impotar este paquete */


/*  Se uso el tipo "File" para acceder a la ruta en la que
    esta guardado un archivo que luego se usara en el Future */
main() {
  File file = new File(
      Directory.current.path + '\\assets\\perrit@s.txt');

  // "readAsString retorna un Future que resuelve un String"
  Future<String> f = file.readAsString();

  f.then(print);

  print('Mensaje antes del Future (luego imprime el archivo.txt)');
}
