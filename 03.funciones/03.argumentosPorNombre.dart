/* 
      Los argumentos por nombre van agrupados en "{}"

      Al llamar la funcion no es obligatorio ingresar
      los valores del argumento como en las funciones posicionales.

 */

void saludo({
  String? mensaje, 
  String? nombre, 
  int? edad
  }) {
  print('$mensaje, $nombre, $edad');
}

/* 
main(){
  saludo(nombre: 'Spike');    // se ingreso solo el argumento "nombre"
} */ 



/*  Se recomienda declarar los argumentos en orden alfabetico.

    Para declarar un argumento por nombre como obligatorio se usa
    "required"
    
    Tambien se pueden declarar en una misma funcion argumentos
    posicionales y por nombre
      */

    

void saludar (
  String mensaje, //            argumento posicional
    {required String nombre, // argumento por nombre obligatorio
    int n = 9}     //            dando un valor por defecto
  ){
    print('$mensaje, $nombre, $n');
  }

main(){
  saludar('Oelo', nombre: 'Spike');
}



