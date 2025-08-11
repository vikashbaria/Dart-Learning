void main() {
  /*Q5. Write a program to make such a 
pattern like a right angle triangle with a number which will repeat a number in 
a row. The pattern like : 
 */
  int rows = 5; // total rows

  for (int i = 1; i <= rows; i++) {
    String line = '';
    for (int j = 1; j <= i; j++) {
      line += i.toString();
    }
    print(line);
  }
}
