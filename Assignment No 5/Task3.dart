void main() {
//Q.3: Create a list of Days and remove one by one from the end of list.
  List Days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  // Days.removeLast();

  print("This is actual list $Days");

  for (int i = Days.length - 1; i >= 0; i++) {
    Days.removeLast();
    print(Days);
    if (Days.isEmpty) {
      print("List is empty");
      break;
    }
  }
}
