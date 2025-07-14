import 'dart:io';
/*Self Task Provided by Sir 

SELF TASK:
how to take user input in dart.
https://how.dev/answers/how-to-get-input-from-users-in-dart
maine yahan se kiya hai 

maine ye website per dekha but yahan se bhi problem solve nhi huwi kyu k nullsafety ka error arha tha to maine phir thora or google kiya or dekha k null saftey kiya hota hai

 */

void main() {
  String? name = stdin.readLineSync();
  print("Welcome,$name to the World of Programming");
}
