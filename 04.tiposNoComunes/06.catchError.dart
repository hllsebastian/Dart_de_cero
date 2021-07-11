/* 
      Catch Error

      Permite dar un mensaje de error 

 */

main() {
  
  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    
    if (1==1) { // la palabra reservada "throw" permite lanzar el mensaje
      throw 'Bum cataBum!!';
    }

    return 'retorno del future';
  });

  timeout.then(print)  //retorna el future.
         .catchError((error)=>print(error));  
        
  print('Mensaje antes de lanzar el error'); // se imprime primero
}
