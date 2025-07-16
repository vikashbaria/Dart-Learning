# Dart Basic Assignment

This repository contains solutions to basic Dart programming questions, focused on conditional statements, user input, and control flow logic.

## 📋 Questions Included

### ✅ Q.1: Square or Rectangle
Create two integer variables `length` and `breadth`, then check:
- If both are equal → it's a **Square**
- Else → it's a **Rectangle**

### ✅ Q.2: Oldest and Youngest
Take two variables and compare the age values using `if/else` conditions to determine:
- Oldest person
- Youngest person

### ✅ Q.3: Attendance Percentage
Given:
- Number of classes held = 16
- Number of classes attended = 10

Calculate attendance percentage.  
If attendance is less than 75%, the student is **not allowed** to sit in the exam.

### ✅ Q.4: Leap Year Checker
Check if a given year is a **leap year** or not using modulus (`%`) operator:
- Divisible by 4 → leap year
- If century year (like 2000, 1900), it must also be divisible by 400

### ✅ Q.5: Temperature Messages
Given:
```dart
int temperature = 42;

```

Print message according to temperature:

< 0 → Freezing weather

0-10 → Very Cold weather

10-20 → Cold weather

20-30 → Normal in Temp

30-40 → It's Hot

>=40 → It's Very Hot

### ✅ Q.6: Grade Based on Marks
Use conditional statements to assign grade:

>= 90 → Grade A

80 to <90 → Grade B

70 to <80 → Grade C

60 to <70 → Grade D

<60 → Grade F

### ✅ Q.7: Even or Odd Number
Check whether a number is even or odd using modulus operator.

### ✅ Q.8: Multiple of 3 or 5
Assume a number and check whether it is a multiple of 3 or 5 using % operator.

✍️ Self Task: User Input in Dart
Example for taking user input in Dart using dart:io:
```
import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Hello, $name!');
}
```
## 🛠️ Technologies
- Dart SDK
- Command-line interface

## 📌 Author
Vikash Harjeewan
