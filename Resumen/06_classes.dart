void main() {
  
  final Hero wolverine = Hero(name: 'Logan',power: 'Regeneración');
  
  print( wolverine );
  print( wolverine.name );
  print( wolverine.power );
  
}


class Hero {
  
  String name;
  String power;
  
  Hero({ 
    required this.name, 
    this.power = 'Sin poder'
  });
  
//   Hero( String pName, String pPower )
//      : name = pName,
//        power = pPower;
  

  // Cuando se muestra un objeto en consola, por atras esta corriendo el toString()
  // El @ indica que estamos sobreescribiendo el metodo
  @override
  String toString() {
    return '$name - $power'; // ya sabe que son las propiedades de la clase, no es necesario el this.
  }
  
}









