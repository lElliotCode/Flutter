void main() {
  
  final Map<dynamic, dynamic> pokemon = {
    1: 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': ['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
      },

  };
  
  final pokemons = {
    1: 'ABC',
    2: 'XYZ',
    3: 'QWE'
  };

  print("""
  
  
  Ditto es -> ${pokemon.runtimeType};
  
  ${pokemons[1]};
  
  Name: ${ pokemon[1] }
  
  hp: ${ pokemon['hp'] }
  
  isAlive: ${ pokemon['isAlive'] }
  
  abilities: ${ pokemon['abilities'] }
  
  front_sprite: ${ pokemon['sprites'][1] }
  
  back_sprite: ${ pokemon['sprites'][2] }
  
  
  """);
}
