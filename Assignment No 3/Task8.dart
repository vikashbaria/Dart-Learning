void main() {
/*Q8.  assume a number and check whether it is a multiple of 3 or 5.*/

  int num = 7;

  if (num % 3 == 0 && num % 5 == 0) {
    print("$num is divided by 3 and 5");
  } else if (num % 3 == 0) {
    print("$num is only divided by 3");
  } else if (num % 5 == 0) {
    print("$num is only divided by 5");
  } else {
    print("$num is not applicable to divide by 3 or 5");
  }
}
