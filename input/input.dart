import 'dart:io';

void main() {
  bool islogin = true;
  while (islogin) {
    stdout.write("Enter Your Email Address : ");
    String email = stdin.readLineSync()!;

    stdout.write("Enter Your Password : ");
    String password = stdin.readLineSync()!;
    if (email == "vikashbaria4@gmail.com" && password == "1122") {
      print("Login Successfull");
      break;
    } else {
      print("Invalid Email or Password");
      islogin = true;
    }
  }
}
