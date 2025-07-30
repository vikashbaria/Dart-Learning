void main() {
  //Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.
  Map<String, String> info = {
    "name": "Vikash",
    "age": "30",
    "phone": "1234567890",
    "city": "Karachi"
  };

  var filtration = info.keys.where((key) => key.length == 4);
  print(filtration);
}
