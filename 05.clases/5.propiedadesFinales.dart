/* 
  Se pueden declarar las propiedades como tipo "final"
  para que no sean modificadas
 */

class Cuadrado {
  final int lado;
  final int area;
/*                   Se pueden inicializar las propiedades
                     en un constructor 
                     
            Ademas si uno de los valores de las propiedades
            deriva de una valor de otra propiedad, se puede
            usar la siguiente estructura*/

  Cuadrado (int lado):
    this.lado = lado,
    this.area = lado * lado; /* se dedlaro el parametro del 
                  constructor y se usaron ":" para declarar
                  el valor incial de los atributos "lado" y "area"
                  que era el valor derivado de "lado" */   
  
}

main(){
  
  final medirArea = Cuadrado(10);

  print('El area es ${medirArea.area}');
}