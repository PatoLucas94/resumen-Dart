void main() {
  
  final mySquare = Square( side: -10 );
  
//   mySquare.side = 5;
  
  
  print( 'área: ${ mySquare.area }' );
  
}

class Square {
  
  double _side; // side * side, propiedad privada
  
  // El assert me permite controlar las reglas de negocio
  // Se recomienda primero los asserts y despues las asignaciones porque si un assert no se cumple no se ejecuta la funcion.
  Square({ required double side })
     : assert(side >= 0, 'side must be >= 0'),
       _side = side;
  
  // Propiedad que no existe pero que se crea a travez de un getter
  double get area {
    return _side * _side;
  }
  
  set side( double value ) {
    print('setting new value $value');
    if ( value < 0 ) throw 'Value must be >=0'; // el throw termina la ejecucion en el if
    
    _side = value;
      
  }
  
  
  double calculateArea() {
    return _side * _side;
  }
}


