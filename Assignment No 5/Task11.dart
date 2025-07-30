void main() {
  /*Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
 */
  List<int> list = [12, 545, 656, 12, 5454];
  int n = 4;
  print(list.take(n).toList());
}
