//import 'dart:convert'; //para convertir json

import 'package:http/http.dart' as http; // se recomienda poner arriba los paquetes no propios

import 'package:dart_application_1/classes/reqresp_respuesta.dart';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;


main(List<String> args) {
  
  //            PETICION HTTP        

  /* Importando el paquete http de dart.dev, se hacen llamadas a una instancia.
     
     Aca se escribio la instruccion para ver instancia del response. Luego del 
     .then iba un print(resp), se modifico para extraer y usar el body*/

  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http  .get(url).then((res) {
  

    final resReqResp = reqrespRespuestaFromJson(res.body);  

/*  print(body);
  print('page: ${body['page']}');
  print('per page: ${body['per_page']}');
  print('id del tercer elemento : ${body['data'][2]['email']}'); */

    print('page: ${resReqResp.page}');
    print('per page: ${resReqResp.perPage}');
    print('id del tercer elemento : ${resReqResp.data[2].email}');

  });
}

  //            EXTRAYENDO Y USANDO  EL BODY

  /* Cuando se hace un 'jsonDecode' de una peticion http el resultado es
    un mapa */
/*   final body =jsonDecode(res.body);   //funciones del paquete 'dart:convert'
  print(body);
  print('page: ${body['page']}');
  print('per page: ${body['per_page']}');
  print('id del tercer elemento : ${body['data'][2]['email']}'); */




  








