import 'dart:io';
import 'dart:convert';

class User {
  String email;
  String password;
  String phone;
  String address;
  bool isSchoolChild;
  List<Order> orders = [];

  User(this.email, this.password, this.phone, this.address,
      {this.isSchoolChild = false});

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "phone": phone,
        "address": address,
        "isSchoolChild": isSchoolChild,
        "orders": orders.map((o) => o.toJson()).toList()
      };

  static User fromJson(Map<String, dynamic> json) {
    var u = User(
      json["email"],
      json["password"],
      json["phone"],
      json["address"],
      isSchoolChild: json["isSchoolChild"],
    );
    u.orders = (json["orders"] as List).map((o) => Order.fromJson(o)).toList();
    return u;
  }
}

class Order {
  String pizzaSize;
  int basePrice;
  List<String> extras;
  int finalPrice;
  DateTime time;

  Order(this.pizzaSize, this.basePrice, this.finalPrice,
      {this.extras = const [], DateTime? time})
      : time = time ?? DateTime.now();

  Map<String, dynamic> toJson() => {
        "pizzaSize": pizzaSize,
        "basePrice": basePrice,
        "finalPrice": finalPrice,
        "extras": extras,
        "time": time.toIso8601String()
      };

  static Order fromJson(Map<String, dynamic> json) {
    return Order(
      json["pizzaSize"],
      json["basePrice"],
      json["finalPrice"],
      extras: List<String>.from(json["extras"]),
      time: DateTime.parse(json["time"]),
    );
  }
}

List<User> users = [];
User? loggedInUser;

const String adminUsername = "admin";
const String adminPassword = "admin123";

int totalRevenue = 0;
Map<String, int> pizzaCategoryCount = {"Small": 0, "Medium": 0, "Large": 0};
int totalOrders = 0;

void colorPrint(String text, String color) {
  final codes = {
    "red": "\x1B[31m",
    "green": "\x1B[32m",
    "yellow": "\x1B[33m",
    "blue": "\x1B[34m",
    "reset": "\x1B[0m",
  };
  print("${codes[color]}$text${codes['reset']}");
}

void saveData() {
  final file = File("data.json");
  Map data = {
    "users": users.map((u) => u.toJson()).toList(),
    "totalRevenue": totalRevenue,
    "pizzaCategoryCount": pizzaCategoryCount,
    "totalOrders": totalOrders
  };
  file.writeAsStringSync(jsonEncode(data));
}

void loadData() {
  final file = File("data.json");
  if (!file.existsSync()) return;
  var data = jsonDecode(file.readAsStringSync());
  users = (data["users"] as List).map((u) => User.fromJson(u)).toList();
  totalRevenue = data["totalRevenue"];
  pizzaCategoryCount = Map<String, int>.from(data["pizzaCategoryCount"]);
  totalOrders = data["totalOrders"];
}

void showShopInfo() {
  colorPrint("\n Shop Information:", "blue");
  print("Address: Lakhani Corner Shop No 4 Block 13-A Near Bolan Saji");
  print("Gulshan-e-Iqbal, Karachi");
  print("Contact: 0323-9503550");
  print("Timings: 4:30 PM to 3:00 AM\n");
}

void createAccount() {
  stdout.write("Enter Email: ");
  String email = stdin.readLineSync()!;
  stdout.write("Enter Password: ");
  String password = stdin.readLineSync()!;
  stdout.write("Enter Phone Number: ");
  String phone = stdin.readLineSync()!;
  stdout.write("Enter Address: ");
  String address = stdin.readLineSync()!;
  stdout.write("Are you a school child? (y/n): ");
  String child = stdin.readLineSync()!.toLowerCase();

  bool isChild = (child == "y");
  users.add(User(email, password, phone, address, isSchoolChild: isChild));
  saveData();
  colorPrint("✅ Account created successfully!\n", "green");
}

void login() {
  while (true) {
    stdout.write("Enter Email: ");
    String email = stdin.readLineSync()!;
    stdout.write("Enter Password: ");
    String password = stdin.readLineSync()!;

    if (email == adminUsername && password == adminPassword) {
      adminPanel();
      return;
    }

    for (var user in users) {
      if (user.email == email && user.password == password) {
        loggedInUser = user;
        colorPrint("Welcome ${user.email}!", "green");
        userPanel();
        return;
      }
    }

    colorPrint("Invalid credentials! Please try again.\n", "red");
  }
}

void userPanel() {
  while (true) {
    print("\n---- USER MENU ----");
    print("1) Order Pizza");
    print("2) View My Orders");
    print("3) Logout");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      orderPizza();
    } else if (choice == 2) {
      viewMyOrders();
    } else if (choice == 3) {
      loggedInUser = null;
      break;
    } else {
      colorPrint("Invalid choice!", "red");
    }
  }
}

void orderPizza() {
  print("\n🍕 Available Pizzas:");
  print("1) Small - Rs. 250 (School Child Rs. 200)");
  print("2) Medium - Rs. 450 (School Child Rs. 400)");
  print("3) Large - Rs. 600 (School Child Rs. 550)");

  stdout.write("Select size (1-3): ");
  int choice = int.parse(stdin.readLineSync()!);

  String size = "";
  int price = 0;

  switch (choice) {
    case 1:
      size = "Small";
      price = loggedInUser!.isSchoolChild ? 200 : 250;
      break;
    case 2:
      size = "Medium";
      price = loggedInUser!.isSchoolChild ? 400 : 450;
      break;
    case 3:
      size = "Large";
      price = loggedInUser!.isSchoolChild ? 550 : 600;
      break;
    default:
      colorPrint("Invalid choice!", "red");
      return;
  }

  List<String> extras = [];
  int extraCost = 0;

  stdout.write("\nAdd Extras? (y/n): ");
  if (stdin.readLineSync()!.toLowerCase() == "y") {
    print("1) Extra Cheese (+50)");
    print("2) Extra Sauce (+30)");
    print("3) Cold Drink (+100)");
    stdout.write("Enter choices separated by comma (e.g. 1,3): ");
    var input = stdin.readLineSync()!;
    var choices = input.split(",");

    for (var c in choices) {
      switch (c.trim()) {
        case "1":
          extras.add("Extra Cheese");
          extraCost += 50;
          break;
        case "2":
          extras.add("Extra Sauce");
          extraCost += 30;
          break;
        case "3":
          extras.add("Cold Drink");
          extraCost += 100;
          break;
      }
    }
  }

  int finalPrice = price + extraCost;
  var order = Order(size, price, finalPrice, extras: extras);
  loggedInUser!.orders.add(order);

  totalOrders++;
  pizzaCategoryCount[size] = pizzaCategoryCount[size]! + 1;
  totalRevenue += finalPrice;
  saveData();

  colorPrint(
      "Order placed for $size Pizza - Rs. $finalPrice [Extras: ${extras.join(", ")}]",
      "green");
}

void viewMyOrders() {
  if (loggedInUser!.orders.isEmpty) {
    colorPrint("No orders yet!", "yellow");
    return;
  }
  print("\n🛒 Your Orders:");
  for (var o in loggedInUser!.orders) {
    print(
        "- ${o.pizzaSize} Pizza (Base: ${o.basePrice}, Final: ${o.finalPrice}) | Ordered at ${o.time}");
  }
}

void adminPanel() {
  while (true) {
    print("\n---- ADMIN PANEL ----");
    print("1) View Total Users");
    print("2) View Total Orders");
    print("3) View Sales Report");
    print("4) Logout");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("👤 Total Registered Users: ${users.length}");
    } else if (choice == 2) {
      print("🛒 Total Orders: $totalOrders");
    } else if (choice == 3) {
      print("\n📊 Sales Report:");
      print("Small Pizzas Sold: ${pizzaCategoryCount['Small']}");
      print("Medium Pizzas Sold: ${pizzaCategoryCount['Medium']}");
      print("Large Pizzas Sold: ${pizzaCategoryCount['Large']}");
      print("💰 Total Revenue: Rs. $totalRevenue");
    } else if (choice == 4) {
      break;
    } else {
      colorPrint("Invalid choice!", "red");
    }
  }
}

void main() {
  loadData();
  print(
      "\n\n-------------------  WELCOME TO PIZZA MIZZA -------------------\n");
  sleep(Duration(seconds: 1));
  showShopInfo();
  sleep(Duration(seconds: 1));
  while (true) {
    print("\nMAIN MENU:");
    print("1) Create Your Account");
    print("2) Login (User/Admin)");
    print("3) Exit");

    stdout.write("Enter choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      createAccount();
    } else if (choice == 2) {
      login();
    } else if (choice == 3) {
      saveData();
      colorPrint("Thank you for visiting Pizza Mizza! 🍕", "blue");
      break;
    } else {
      colorPrint("Invalid choice!", "red");
    }
  }
}
