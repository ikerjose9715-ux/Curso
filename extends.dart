void main(){
   final windPlant = WindPlant( initialEnergy: 9 );


  print(windPlant);
  print('wind: ${chargerphone(windPlant)}');
}


double chargerphone(EnergyPlant plant){
  if (plant.energyleft < 10){
    throw Exception('not enoughenergy');
  }
  
  return plant.energyleft - 10;
}








enum PlantType{nuclear, wind , water}

abstract class EnergyPlant{
  double energyleft;
  PlantType type;

EnergyPlant({ 
  required this.energyleft,
  required this.type
});

  void consumeEnergy(double amount);
  
}
// extend o implements
class WindPlant extends EnergyPlant{

  WindPlant({ required double initialEnergy})
      : super(energyleft: initialEnergy, type: PlantType.wind );

@override
      void consumeEnergy( double amount){
        energyleft -= amount;
      }
}