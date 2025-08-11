import 'dart:math';

/*Q9. Implement Dart code to generate a random password of a given length using  a while loop. */
void main() {
  int length = 10;
  String allowedChars = '444411122557878754aAaaAadbffbfbfbfhhdhheb@#\$%&*';

  String password = '';
  Random random = Random();

  while (password.length < length) {
    password += allowedChars[random.nextInt(allowedChars.length)];
  }

  print('Generated Password: $password');
}
