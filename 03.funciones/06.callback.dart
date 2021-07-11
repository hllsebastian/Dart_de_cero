/* 
    Los callbacks son funciones que se llaman dentro
    de otra funcion.

 */
main() {
  
                               /*En la funcion "obetenerUsuario", se
                                esta llamando al callback en el 
                                argumento "(Map persona)".
                                 */
  obtenerUsuario ('100', (Map persona){
      print(persona);
  });
}
                                /* Definiendo la funcion "obtenerUsuarrio.
                                Generalmente el argumento callback se 
                                declara al final.
                                  " */
void obtenerUsuario( String id, Function callback){

  Map usuario = {
    'id'    :  id,
    'nombre': 'Spike'
  }; 

  callback(usuario);       /* Se define la funcion callback para el 
                              objeto"usuario" 
                              */
}


