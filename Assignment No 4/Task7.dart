void main() {
/*Q.7: use 15 methods of Lists except retainwhere,removewhere.
 */
//Hum isme  2 se 3 list ma smjhenge 15 methods ko
  List<int> numbers = [10, 20, 30, 40, 50];
  List<String> names = ["Ali", "Zara", "Ahmed", "Sara"];
  List<dynamic> mix = ["apple", 100, true, 3.14];
  List<int> dupes = [5, 10, 5, 20, 10, 5];

//1st Method Reserved kr k dekhlete hain phele list ko jo k hai numbers
  print(numbers.reversed);
//2nd Method Lenght jo k hum names per dekhenge
  print(names.length);
//3rd Add krne ka dekhenge numbers ma koi ek number ye jo add haina ye sab se last ma value ko add krta hai
  numbers.add(60);
  print(numbers);
//4th Ek list ma dusri list ma add krne k liye hota hai
  numbers.addAll(dupes);
  print(numbers);
//5th Insert karte hain value kisi index per
  numbers.insert(3, 100);
  print(numbers);
  //6th ab hum multiple items ko insert krte hain InsertAll k thorough
  mix.insertAll(1, names);
  print(mix);
  //7th Removeatt dekhenge kisi specefic value k liye
  mix.removeAt(3);
  print(mix);
  //8th Last item hatane kliye lastitem
  mix.removeLast();
  print(mix);
  //9th List ko clear krdete hain clear method se
  mix.clear();
  print("List is clear $mix");
  //10th ab hum check krenge k list empty hai k nhi
  if (mix.isEmpty) {
    print("Empty");
  }
  if (numbers.isNotEmpty) {
    print("List is not Empty $numbers");
  }
  //11th Sort method use krenge sorting krne k liye
  numbers.sort();
  print(numbers);
  //12 ab hum dekhenge sublist jo ek list se dusri list banata hai hum usko kahan se list banani hai start or end ka inde btayenge
  List NewList = numbers.sublist(9);
  print(NewList);
  //13th agar list k item hamesha fix nhi rahegi ye hmesha apne hissab se random tareeqe se list ko show krwayenge
  numbers.shuffle();
  print(numbers);
  //14th hum ab dekhenge k kisis ka inde kese dekhenge suppose hum nmes ko dekhte hain
  print(names.indexOf("Zara"));
  //15th ab hum dekhenge k kisi item k index kese update kr
  //sakte hain
  names[0] = "Rahul";
  print(names);
}
