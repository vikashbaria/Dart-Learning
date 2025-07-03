void main() {
  /*
4.Create an integer variable num =
7. Add 8 to it, divide the result by 3, take the modulus with 5, then multiply
the result by 5 and store it in variable i. Display the final result.
  */
  int num = 7;

  int step1 = num + 8;
  double step2 = step1 / 3;
  double step3 = step2 % 5;
  double i = step3 * 5;

  print('Final result: $i');

  /*
  //Second step with directly perform in one line according bodmass
  int num2 = 7;
  double i3 = (((num2 + 8) / 3) % 5) * 5;
  print('Final result: $i3');
  */
}
