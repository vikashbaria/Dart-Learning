void main() {
  /*Q6. Write a program that takes a list 
of numbers as input and prints the numbers greater than 5 using a for loop an d 
if-else condition.*/
  List numbers = [20, 2, 15, 2, 5];
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 5) {
      print(numbers[i]);
    }
  }
}
