void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  // bool? isAlive; <- true, false, null
  final bool isAlive = true;
  // final List<String> abilities = ['impostor'];
  // final abilities = <String>['impostor'];
  final abilities = <String>['impostor'];
  final List<String> sprites = ['ditto/front,png', 'ditto/back.png'];

  // dynamic == puede ser NULL
  dynamic errorMessage = 'Error message';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = null;
  errorMessage = {1: 1, 2: 2, 3: 3};
  errorMessage = () => true;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
}
