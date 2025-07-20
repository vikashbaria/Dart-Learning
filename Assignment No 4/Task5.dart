void main() {
  /*Q.5: Given a list of integers, write a dart code that returns the maximum value from the list.
 */
  List<int> intnum = [20, 45, 56, 87, 85];

  int tempno = intnum[0];
  for (int i = 0; i < intnum.length; i++) {
    if (tempno < intnum[i]) {
      tempno = intnum[i];
    }

    //print(intnum[i]);
  }

  print(tempno);
}
