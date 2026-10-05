void main(){
  final mysquare = square(side: 10);
 mysquare.side = 5;

//  print('area: ${ mysquare.calculateArea()}');
  print('area: ${ mysquare.area}');
}

class square {
  double _side;

//  square({required this.side})
    square({required double side})
    : assert(side >=0 , 'side must be >=0'),
    _side = side;

  double get area {
      return _side * _side;
  }
  set side(double value){
    print('setting new value $value');
if ( value < 0) throw 'Value must >=0';
    _side = value;
  }
  double calculateArea() {
    return _side * _side;
  }
}