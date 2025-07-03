void main() {
  /*
  10.  Write a program to calculate simple interest using the formula:
SI = (Principal × Rate × Time) / 100
   */
  double principal = 5000;
  double rate = 5;
  double time = 2;

  double si = (principal * rate * time) / 100;

  print('Principal: Rs. $principal');
  print('Rate: $rate%');
  print('Time: $time years');
  print('Simple Interest: Rs. ${si.toStringAsFixed(2)}');
}
