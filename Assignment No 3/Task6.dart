void main() {
  /*
  Q6. Create a variable marks and assign any integer value between 0 and 100. Then use if/else conditions to assign a grade:
Marks >= 90: Grade A
Marks >= 80 and < 90: Grade B
Marks >= 70 and < 80: Grade C
Marks >= 60 and < 70: Grade D
Marks < 60: Grade F
Q7. Check whether a number is or not.
   */
  print("Program To Show Your Grade According Marks");
  int Marks = 81;
  if (Marks >= 90) {
    print("Grade A");
  } else if (Marks >= 80 && Marks < 90) {
    print("Grade B");
  } else if (Marks >= 70 && Marks < 80) {
    print("Grade C");
  } else if (Marks >= 60 && Marks < 70) {
    print("Grade D");
  } else if (Marks < 60) {
    print("Grade F");
  }
}
