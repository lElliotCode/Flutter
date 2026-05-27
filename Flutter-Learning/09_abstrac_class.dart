void main(){
  
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant( energyLeft: 150);
  
    windPlant.consumeEnergy(23);
    windPlant.consumeEnergy(-5);
    windPlant.consumeEnergy(-3);
    windPlant.consumeEnergy(-12);
    windPlant.consumeEnergy(8);
  
  
  print(windPlant.energyLeft);
  print("Acá la función se ejecuta: ${chargePhone(windPlant)}");
  
  print("Energía nuclear ${nuclearPlant.energyLeft}");
  nuclearPlant.consumeEnergy(20);
  print("Energía nuclear ${nuclearPlant.energyLeft}");
}


enum PlantType { nuclear, wind, water }


double chargePhone( EnergyPlant plant){
  if(plant.energyLeft < 10) {
    throw Exception('No alcanza la batería');
  };
  return plant.energyLeft - 10;
}


abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft, // <-- se crea
    required this.type        // <-- se crea
    });
  
  void consumeEnergy( double amount ) ;
  
  // throw UnimplementedError(); 
  
}


// extends 

class WindPlant extends EnergyPlant{
  
  
  WindPlant({
    required double initialEnergy
  })
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}


// Implements


class NuclearPlant implements EnergyPlant{
  
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft });
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= (amount - 5);
  }
  
}
