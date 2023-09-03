void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10]; // Es una lista
  
  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${ numbers.first }');
  print('Reversed: ${ numbers.reversed }'); // Devuelve un iterable
  
  final reversedNumbers = numbers.reversed; // Es un iterable. Sabe cuantos elementos tiene y estan ordenados
  print('Iterable: $reversedNumbers');
  print('List: ${ reversedNumbers.toList() }'); // Devuelve una lista en []
  print('Set: ${ reversedNumbers.toSet() }'); // Devuelve un set

  // La diferencia entre set y lista. Set no contiene valores duplicados, no asi las listas
  
  final numbersGreaterThan5 = numbers.where( (int num) {
    return num > 5; // true
  });
  
  print('>5 iterable: $numbersGreaterThan5');
  print('>5 Set: ${ numbersGreaterThan5.toSet() }');
  
}