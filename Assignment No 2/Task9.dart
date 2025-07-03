void main() {
  /*9.Write a program to find the
maximum number among three using ternary operators or simple math logic */

  int a = 45;
  int b = 67;
  int c = 53;

  // Using nested ternary operators to find maximum
  int max = (a > b) ? (a > c ? a : c) : (b > c ? b : c);

  //ye ese kam krega

  print('Maximum number is: $max');

  //isko or smjhne k liye maine isko if else ma bhi toor diya hain
/*
  {
  int max;

  if (45 > 67) {
    if (45 > 53) {
      max = 45;
    } else {
      max = 53;
    }
  } else {
    if (67 > 53) {
      max = 67;
    } else {
      max = 53;
    }
  }

  print('Maximum number is: $max');
}
*/
}
