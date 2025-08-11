void main() {
  /*Q7.  Write a program that counts the 
number of vowels in a given string using a for loop and if -else condition.*/

  String text = "Hello World";
  List<String> vowels = ["a", "e", "i", "o", "u"];
  int count = 0;

  for (int i = 0; i < text.length; i++) {
    String char = text[i].toLowerCase();
    if (vowels.contains(char)) {
      count++;
    }
  }

  print("Number of vowels: $count");
}
