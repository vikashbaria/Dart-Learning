void main() {
  /* 7.    
Write a program to swap the values
of two integers using a temporary variable.
   */

  int a = 10;
  int b = 20;

  print('Before Swapping:');
  print('a = $a');
  print('b = $b');

  // Swapping using temporary variable
  int temp = a;
  a = b;
  b = temp;

  print('\nAfter Swapping:');
  print('a = $a');
  print('b = $b');
}
