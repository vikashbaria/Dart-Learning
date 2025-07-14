void main() {
/*
  Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
Number of classes held = 16,
Number of classes attended = 10,
and print percentage of class attended.
Is student is allowed to sit in exam or not?*/

  print(
      "----This Program will tell you about sit or not exam to \ncalcutalte the number of classes attended----\n---------------------------------");
  int numberofclassheld = 16;
  int numberofclassattended = 11;
  double percentage = (numberofclassattended / numberofclassheld) * 100;

  //print(percentage);

  if (percentage < 75) {
    print(
        "Sorry You Can't Sit on Exam Because you attended only $numberofclassattended classes out of $numberofclassheld\n and your attendance percentage less than 75%\n Your Attendance Percentage Below Mentioned\n $percentage");
  } else {
    print("Congratulation You Can sit on Exam");
  }
}
