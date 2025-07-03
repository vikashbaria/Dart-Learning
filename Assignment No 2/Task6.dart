void main() {
  /*
  6.    
Robert's marks in three subjects
are 78, 45, and 62 (each out of 100).
Write a program to calculate:
Total marks
Percentage
Print his name, individual marks, total, and percentage.
   */

  // Student name
  String name = 'Robert';
  // Marks in 3 subjects
  int subject1 = 78;
  int subject2 = 45;
  int subject3 = 62;

  // Total marks
  int totalMarks = subject1 + subject2 + subject3;

  // Percentage
  double percentage = (totalMarks / 300) * 100;

  // Print details
  print('Student Name: $name');
  print('Subject 1 Marks: $subject1');
  print('Subject 2 Marks: $subject2');
  print('Subject 3 Marks: $subject3');
  print('Total Marks: $totalMarks');
  print('Percentage: ${percentage.toStringAsFixed(2)}%');
}
