void main() {
  /*Q8. Write a Dart program that counts the number of digits in a given number using a while 
loop. */

  int number = 9876547;
  int count = 0;

  int temp = number;
  while (temp > 0) {
    temp ~/= 10;
    count++;
  }

  print("Number of digits in $number is $count");
}
