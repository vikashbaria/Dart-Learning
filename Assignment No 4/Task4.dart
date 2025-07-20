void main() {
  /* Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.
*/
  List<int> numbers = [25, 23, 89, 456, 12, 3, 1, 500];

  int small = numbers[0];
  int big = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    //print(numbers[i]); finally humein yahan per list ki value on by one mil gai hai
    if (numbers[i] < small) {
      small = numbers[i];
    }
    if (numbers[i] > big) {
      big = numbers[i];
    }
  }

  print("Small No $small");
  print("Big No $big");
}
