void main() {
  /*Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".
 */
  Map<String, dynamic> user = {
    "name": "Vikash",
    "isAdmin": true,
    "isActive": true
  };
  if (user["isAdmin"] && user["isActive"]) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }
}
