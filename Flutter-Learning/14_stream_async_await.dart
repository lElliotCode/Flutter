void main(){
  
  emitNumber()
    .listen( (String value) {
      print(' Valores del stream: $value');
    });
  
}

Stream<String> emitNumber() async *{
  
  final valuesToEmit = [1,2,3,4,5];
  
  for ( int i in valuesToEmit) {
    await Future.delayed( const Duration(seconds: 1));
    yield 'hola $i';
  }
}