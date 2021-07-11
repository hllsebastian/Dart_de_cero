/* 
                Streams

      Los "streams" son una corriente de datos o flujo
      de informacion.
      Son asincronos.
      Se les debe definir que hara con los datos cuando
      los reciba antes de enviar la informacion.
 */

import 'dart:async';/* se importa este paquete para usar 
                        el StreamController */

main() {

  final streamctrl = StreamController();/* se decalara la funcion que 
                                      captara la informacion.
                                      Se puede declarar tambien con el
                                      nombre "streamcontroller".
                                       */

  streamctrl.stream.listen((data) { /* Con el ".stream" se hace referencia al
                     flujo de informacion. el "listen" un argumento
                     posicional obligatorio (callback) y una serie
                     de argumentos con nombres. El "listen" 
                     obligatoriamente ejecutara una funcion cuando
                     se recibe un valor.
                     
                     Aca solo se define una funcion que se ejecuta 
                     cuando tenga informacion */

    print('Despegando $data');
  });


    streamctrl.sink.add('Apollo 11'); /* El "sink" indica que es la informacion
                                    que ira al incio del "stream". */

    print('Mensaje antes del Stream'); 
}
