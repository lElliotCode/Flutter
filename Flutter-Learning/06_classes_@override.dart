void main(){
  
  final wolverine = new Hero('Logan', 'Regeneración');
  
  print('''
  
  $wolverine
  
  Name: ${wolverine.name}
  Power: ${wolverine.power}
  
  ''');
  
  final pokemon = new Pokemon(name: 'Ditto',);

  print('''
  
  $pokemon
  
  Name: ${pokemon.name}
  Power: ${pokemon.power}
  
  ''');
}

class Hero {
  
  String name = '';
  String power = '';
  
  
  Hero( this.name, this.power);
//   Hero(String pName, String pPower){
//     this.name = pName;
//     this.power = pPower;
//   }

}

class Pokemon {
  
  String name = '';
  String power = '';
  
  
  Pokemon({ 
    required this.name, 
    this.power = 'No Power'
  });

  @override
  String toString(){
    return '$name, $power';
}
}