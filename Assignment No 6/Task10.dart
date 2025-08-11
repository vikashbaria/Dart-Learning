import 'dart:io';

void main() {
/*Implement Dart code to print the multiplication table of a given number using  a while 
loop.*/
  stdout.write("Enter Any No to Print Table : ");
  String? tablenumber = stdin.readLineSync()!;
  int table = int.parse(tablenumber);
  int number = table; // Table of 5
  int i = 1;

  while (i <= 10) {
    print('$number x $i = ${number * i}');
    i++;
  }
}
