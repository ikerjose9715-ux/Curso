void main(){
 //  final windPlant = EnergyPlant();
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