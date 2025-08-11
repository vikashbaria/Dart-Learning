import 'dart:io';

void main() {
/*Q1. Write a program that prints the 
Fibonacci sequence up to a given number using a for loop. 
 
Example: 
Input: 
10 
Output: 
0 1 1 2 3 5 8 */
  stdout.write("Enter Fibonacci No ");
  String? number = stdin.readLineSync();
  int inputnumber = int.parse(number!);
  int a = 0, b = 1;
  for (int i = 0; i < inputnumber; i++) {
    print("$a ");
    int temp = a;
    a = b;
    b = temp + b;
  }
}
