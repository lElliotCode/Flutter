void main() async {
  
  print('Inicio del programa');
  
  try {
    final value = await httpGet('');
    print(value);
  } on Exception catch (err) {
    print('Error capturado en la excepción, $err');  
  } catch (err){
      print(err);
  } finally {
      print('Finally pase lo que pase');
  }
  
  print('Fin del programa');
  
}

Future<String> httpGet(String url) async {
  
  await Future.delayed( Duration(seconds: 1));
  
  throw Exception('Falta una url válida');
//   throw 'Error en la petición';
//   return 'Respuesta de la petición';
}