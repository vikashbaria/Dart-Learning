void main() {
  //Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List<int> numbers = [
    22,
    545,
    589,
    12,
    123,
    2,
    11,
    600,
  ];
  numbers.sort();
  int smallest = numbers.first;
  int greatest = numbers.last;
  print(
      "Smallest No in the list is $smallest & The Greatest No in the list is $greatest");
}
