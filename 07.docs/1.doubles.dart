/* Ejemplo encontrando documentacion en Dart */

main(){

  double num = 3.456;

  double infinito = double.infinity;

  print('firma: ${num.sign} -> $num'); 

/* En la web de Dart dart.dev, en la opcion Docs se encuentran
  los apartados Effective Dart (buenas practicas), Language Tour
  (sobre el lenguaje de Dart) y Library Tour (sobre librerias) */

  print('num -> isFinite: ${num.isFinite}');
  print('infinito -> isFinite: ${infinito.isFinite}');
  print('absoluto -> abs: ${num.abs()}');
  print('siguiente numero -> ceil: ${num.ceil()}');
  print('siguiente numero a decimal -> ceilToDouble: ${num.ceilToDouble()}');
  print('redondoe -> round: ${num.round()}'); //tambien hay "rounToDouble()"
  print('numero mas cercano -> clamp: ${num.clamp(1,3)}'); /* arroja el numero
                          exacto si esta dentro del rango ingresado "1,3" o el 
                          mas cercano si la variable no esta dentro del rango */
    

  
  

}



