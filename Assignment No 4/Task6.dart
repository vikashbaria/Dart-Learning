void main() {
  /*Q.6: Write a Dart code that takes in a list of strings and prints a new list with the elements in 
reverse order. The original list should remain
unchanged. */
  List<String> lists = ["Apple", "Banana", "Mango", "Orange"];
  List listcopy = lists;
  print("This is copy reserved list ${listcopy.reversed.toList()}");
  print("Real List ${lists} without reserved");
}
