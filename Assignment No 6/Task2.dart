void main() {
  /*
  Q2.  Implement a code that finds the 
largest element in a list using a for loop. 
 
Example: 
Input: 
[3, 9, 1, 6, 4, 2, 8, 5, 7] 
 
Output: 
Largest element: 9*/
// Define the list of numbers
  List numbers = [3, 2, 1, 6, 4, 2];
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
      print(max);
    }
  }
}
