

part of 'shapes.dart';


class Rectangle implements Shapes {
  late double length;
  late double width;
  Rectangle({required this.length, required this.width});
  @override
  double area() {
    return length * width;
  }

  @override
  double mo7it() {
    return 2 * (length + width);
  }

  @override
  void printDetails() {
    print("the area of rectangle => ${area()} and mo7et => ${mo7it()}");
  }
}