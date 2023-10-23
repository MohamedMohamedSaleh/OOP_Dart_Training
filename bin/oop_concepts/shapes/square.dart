part of 'shapes.dart';

class Square implements Shapes {
  late double length;
  Square({required this.length});
  @override
  area() {
    return pow(length, 2) as double;
  }

  @override
  double mo7it() {
    return length * 4;
  }

  @override
  void printDetails() {
    print("the area of square => ${area()} and mo7et => ${mo7it()}");
  }
}
