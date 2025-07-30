void main() {
/*
Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.
*/
  List<int> numbers = [1, 2, 3, 4, 5];
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print(evenNumbers);
}
