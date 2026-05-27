void main() {
  
  final mySquare = new Square(side: -4);
  
  mySquare.side = 12;
  
  
  print('''
  
  Area de MySquare: ${mySquare.calculateArea()}
  
  Area con get: ${mySquare.area}
  
  
  
  ''');
  
  
}

class Square {
  
  double _side; // side * side

  Square({required double side})
    : assert(side >= 0, 'side must be greater than or equal to 0'),
      _side = side;
  
  double get area {
    return _side * _side;
  }
  
  set side(double value){
    print('Setting new value ${value}');
    if(value < 0) throw 'Value to reasign must be grather than 0';
    
    _side = value;
  }
  
  double calculateArea() => _side * _side;
}