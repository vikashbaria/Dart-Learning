void main() {
  /*Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list. The order of elements in the new list should be the same as in the original list.
*/
  List<int> list = [1, 2, 3, 4, 5, 5, 2, 7, 3];
  List<int> uniqueList = [];
  for (int i = 0; i < list.length; i++) {
    if (!uniqueList.contains(list[i])) {
      uniqueList.add(list[i]);
    }
  }
  print(uniqueList);
}
