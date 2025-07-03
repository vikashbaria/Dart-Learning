import 'dart:math';

void main() {
  /*
  13.  Write a program to calculate the perimeter (circumference) of a
circle using:*/

  double radius = 7; // You can change the radius value as needed

  double perimeter = 2 * pi * radius;

  print('Radius: $radius');
  print(
      'Perimeter (Circumference) of the circle: ${perimeter.toStringAsFixed(2)}');
}
