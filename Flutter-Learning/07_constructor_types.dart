void main(){
  
  final Map<String, dynamic> rawJson = {
    'name': 'Heroe Json',
    'power': 'Json Laser',
    'isAlive': true
  };
  
  
  final Hero ironMan = Hero.fromJson(rawJson);
  
//   final ironMan = new Hero(
//     name: rawJson['name'] ?? 'Anonimo',
//     power: rawJson['power'] ?? 'No Power',
//     isAlive: rawJson['isAlive'] ?? false
//   );
  
  
//   final ironMan = new Hero(
//     name: 'Tony',
//     power: 'Rayito',
//     isAlive: true
//   );
  
  print( ironMan ); 
  
}

class Hero {
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  Hero.fromJson( Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? false;
  
  @override
  String toString(){
    return 'Name: $name, Power: $power, isAlive: ${isAlive ? 'Still Alive' : 'Dead'}';
  }
}
