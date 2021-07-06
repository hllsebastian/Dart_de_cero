/*  Las funciones estan compuestas por parametros
    o argumentos que estan entre parentesis () y 
    cuerpo que va entre llaves {donde esta
    la instruccion a ejecutar}  
    
    Las funciones sirven para reutilizar el codigo,
    cuando se torna repetitivo.
    
    Las lineas de codigo despues de un return, dentro
    de una funcion, no se ejecutaran.
    */

/*                  se declaro una funcion que retorna
                    que retorna un string*/
String saludar() {
  return 'Oelos\n';
}

/*                  Se declaro una funcion que ejecuta
                    una instruccion pero, no se le indica
                    una valor de retorno. Por defecto se 
                    tomara como null */
/* main() {
  var mensaje = saludar();
  print(mensaje + '\n');
} */

/*                  Ejemplo de cuando no se especifica
                    un valor de retorno */

main() {
  var mensaje = saludo();

  print(mensaje);
}

saludo() {
  print('Hola null');
}
