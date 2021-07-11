/* 
          Streams: tipado y broadcast

    El tipado es para definir que tipo de informacion ingresara en 
    el stream
 */

import 'dart:async'; /* se importa este paquete para usar 
                        el StreamController */

main() {

  final streamctrl = new StreamController<String>.broadcast(); /* Aca se 
                                        definio que el StreamController 
                                        manejara datos String.
                                        
                                        Tambien el ".broadcast" para indicar que
                                        tendar multiples suscripciones*/

  streamctrl.stream.listen(
    (data) => print('Despegando $data'),
     onError: (err)=>print('error! $err'), //Muestra alerta de error
     onDone: ()=> print('Ya hay oxigeno'), //Se arroja en el ".close"
     cancelOnError: false //Cancela la ejecucion de los siguientes codigos
);

  streamctrl.stream.listen(  // Esta es la otra suscripcion
    (data) => print('Segundo despegue $data \n'),
     onError: (err)=>print('error de la otra suscripcion! $err'),
     onDone: ()=> print('Ya hay oxigeno'),
     cancelOnError: false 
);

    streamctrl.sink.add('Apollo 11'); /* El "sink" indica que es la informacion
                                    que ira al incio del "stream". */

    streamctrl.sink.add('Apollo 12');
    streamctrl.sink.add('Apollo 13');
    streamctrl.addError('Nos quedamos sin oxigeno'); //aca se cancela la 
    streamctrl.sink.add('Apollo 14');           //ejecucion de codigo
    streamctrl.sink.add('Apollo 15');
    streamctrl.sink.add('Apollo 16'); /*si hay una instruccion despues del 
                                       close no se ejecuta el stream y muestra
                                       error*/
    streamctrl.sink.close(); // ".close" para finalizar el stream

    print('Mensaje antes del Stream'); 
}





