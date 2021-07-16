main(){

List<int>    lista1  = [1, 2, 3, 4];
List<int>?   lista2;
List<int>    lista3  = [10,20,30,40];
List<String> nombres = ['Spike', 'Ciro'];


print('cantidad de elementos: length -> ${lista1.length}');
print('posicion del elemento: [] -> ${lista1[0]}');
print('primera posicion del conjunto: first -> ${lista1.first}');
print('ultima posicion del conjunto: last -> ${lista1.last}');
print('ultima posicion del conjunto: last -> ${lista1.last}\n');

print('evaluar conjunto vacio: isEmpty -> ${lista1.isEmpty} ');
print('evaluar conjunto vacio: isEmpty -> ${lista2?.isEmpty}::${lista2 == null}');

print('\ntrabajar List como Map: asMap -> ${lista1.asMap()}');
Map nombreMap = nombres.asMap();
print('nombreMap = ${nombreMap[0]} ');



}

