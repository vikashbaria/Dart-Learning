void main() {
  /*
  14.  Take a 3-digit number and calculate the sum of its individual
digits.
   */
  int number = 537;

  int hundreds = number ~/ 100;
  int tens = (number ~/ 10) % 10;
  int units = number % 10;

  int sum = hundreds + tens + units;

  print('Number: $number');
  print('Sum of digits: $sum');

  //Second method to perform same thing

  /*
    int number = 537;

  // Convert number to string
  String numStr = number.toString();

  // Get individual digits using indexing
  int digit1 = int.parse(numStr[0]); // 5
  int digit2 = int.parse(numStr[1]); // 3
  int digit3 = int.parse(numStr[2]); // 7

  int sum = digit1 + digit2 + digit3;

  print('Number: $number');
  print('Sum of digits: $sum');
   */
}
