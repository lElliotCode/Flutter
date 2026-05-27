void main() {
  print(addTwoNumbers(10, 12));

  print(sayHello());

  print(saySomethingArrow());
  
  print(greetPerson(name: 'Elliot!'));
}


String addTwoNumbers(int a, [int b = 0]) {
  
  return 'Suma: ${a + b}';
}


String sayHello() {
  return 'Hello World!';
}


String saySomethingArrow() => 'Something in arrow';


String greetPerson({ required String name, String message = 'Hola,'}){
  
  return '$message $name';
}
