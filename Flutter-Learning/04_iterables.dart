void main() {
  
  final numbers = [1,2,3,4,5,6,7,8,9,9,9];
  
  print('''
  
  Lista original: ${numbers}

  Length: ${numbers.length}
  
  Index 0: ${numbers[0]}
  
  Index First: ${numbers.first}
  
  Reversed: ${numbers.reversed}
  
  

  ''');

  final reversedNumbers = numbers.reversed ;
  
  
  print(numbers.runtimeType);
  print(reversedNumbers.runtimeType);
  
  print('''
  
  Reversed: ${reversedNumbers}
  
  List: ${reversedNumbers.toList()}
  
  Set: ${reversedNumbers.toSet()}
  
  
  ''');
  
  
  final greaterThan5 = numbers.where( (int n) {
    return n > 5;
  });
  
  print('Mayores que 5: ${greaterThan5}');
  
  print('Mayores que 5 en Set: ${greaterThan5.toSet()}');
}

