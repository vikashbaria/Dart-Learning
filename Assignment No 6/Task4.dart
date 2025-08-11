import 'dart:io';

void main() {
  /*Q4. Implement a function that checks if a given string is a 
palindrome. 
 
Example: 
 
Input: 
"radar" 
 
Output: 
"radar" is a palindrome. */
  stdout.write("Enter Any Word to Check Palindrome : ");
  String word = stdin.readLineSync() ?? '';

  String str = word;

  String result = isPalindrome(str);
  print('"$str" $result');
}

String isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  if (str == reversed) {
    return "is a palindrome.";
  } else {
    return "is not a palindrome.";
  }
}
