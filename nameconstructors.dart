void main(){

    final Map<String, dynamic> rawjson = {
        'name' : 'hulk',
        'power' : 'aplasta',
        'isAlive': true
    };
  final ironman = hero.fromjson(rawjson); 
//  isAlive: rawjson['isAlive'] ?? false,
//  power: 'Money',
//  name: 'Tony Stark'
  //);
   
   print(ironman);
}

    class hero{
        String name;
        String power;
        bool isAlive;

        hero({
          required this.name,
          required this.power,
          required this.isAlive
        });

        hero.fromjson(Map<String,dynamic> json)
        : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isalive found';

        
    @override
    String toString(){
        return '$name, $power, isAlive: ${isAlive?'yes!':'nope'}';
    }
    }
