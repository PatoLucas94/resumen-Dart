void main() {

  print( greetEveryone() );
  
  print( 'Suma: ${ addTwoNumbers( 10, 20 ) }' ); // argumentos posicionales. Siempre en orden
  
  print( greetPerson( name: 'Fernando', message: 'Hi,' ) ); // Argumentos por nombre, puede estar en desorden
  
}


String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, int b) => a + b; 

int addTwoNumbersOptional( int a, [ int b = 0 ]) { // Valor opcional y si no viene es 0
//   b ??= 0;
  return a + b;
}

// Parametros opcionales y por nombre
// Obliga a proporcionar un nombre 
String greetPerson({ required String name, String message = 'Hola,' }) {
  
  return '$message Fernando';
}









