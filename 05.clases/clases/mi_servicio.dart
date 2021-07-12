class MiServicio {

  /*           2. se crea una propiedad static privada, que sera la
                que mantendra en memoria la instancia   */
  static final MiServicio _singleton = new MiServicio._internal();


  /*  3.  se cre un "constructor factory" desde donde se llamara 
          a la clase*/
  factory MiServicio(){
    return _singleton;
  }

  MiServicio._internal();  /* 1. se crea un constructor privado que
                               que genera una instancia  */

  String url = 'https//abc';
  String key = 'ABC123';

}


