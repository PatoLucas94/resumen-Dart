void main() {
  
  // Que pasa si recibimos una peticion de http
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // Con ese rawJson quiero crear una instancia de mi clase
    
final ironman = Hero.fromJson( rawJson );
  
//   final ironman = Hero(
//     isAlive: false,
//     power: 'Money',
//     name: 'Tony Stark'
//   );
  
  
  print( ironman );
  
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
  
  // Formatear un json que viene de un http por ejemplo. El nombre es el que quieras
  Hero.fromJson( Map<String,dynamic> json ) 
     : name = json['name'] ?? 'No name found', // Si no viene el name poneme eso
       power = json['power'] ?? 'No power found', // si no viene el power, poneme eso
       isAlive = json['isAlive'] ?? 'No isAlive found';
  

  
  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'YES!':'Nope' }';
  }

}




