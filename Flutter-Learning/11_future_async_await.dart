void main() async {
  
  print('Inicio del programa');
  
  try {
    final value = await httpGet('');
    print(value);
  } catch (err){
    print(err);
  };
  
  print('Fin del programa');
  
}

Future<String> httpGet(String url) async {
  
  await Future.delayed( Duration(seconds: 1));
  
  throw 'Error en la petición';
  //   return 'Respuesta de la petición';
}

void main() {
  
  print('Inicio del programa');
  
  httpGet('').then( (value){
    print(value);
  }).catchError( (err) {
      print('---> ${err}');
  });
  
}

Future<String> httpGet(String url){
  
  return Future.delayed( Duration(seconds: 1), () {
    
    throw 'Error en la petición ';
  //   return 'Respuesta de la petición';
  });
}