
part of 'shapes.dart';
class Circle extends Shapes {
  late double radius;
  Circle({required this.radius});
  @override
  double area() {
    return pi * pow(radius, 2);
  }

  @override
  double mo7it() {
    return 2 * pi * radius;
  }

  @override
  void printDetails() {
    print("the area of circle => ${area()} and mo7et => ${mo7it()}");
  }
}