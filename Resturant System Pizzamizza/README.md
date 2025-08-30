# 🍕 Pizza Mizza - Dart Console Application

This is a **Pizza Ordering System** built in **Dart** (console-based).  
It allows users to **create accounts, log in, order pizzas with extras, view orders,** and also provides an **admin panel** to monitor sales and revenue.  
Data persistence is handled using a **JSON file (data.json)**.

---

## 🚀 Features

### 👤 User Features
- Create account (with school child discount option).
- Login using email & password.
- Order pizzas:
  - Small, Medium, Large sizes.
  - Discounts for school children.
  - Optional extras (Cheese, Sauce, Cold Drink).
- View personal order history.

### 🔑 Admin Features
- Login with:
  - **Username:** `admin`
  - **Password:** `admin123`
- View:
  - Total registered users.
  - Total orders.
  - Sales report (Pizza categories & Total revenue).

### 💾 Data Storage
- All data is saved in **`data.json`** file.
- Persisted information:
  - Users & their orders.
  - Total revenue.
  - Pizza category sales count.
  - Total orders.

---

## 📂 Project Structure
```
pizza_mizza/
│── main.dart # Main application file (this code)
│── data.json # Auto-generated file for saving data
│── README.md # Project documentation

```

---

## ⚙️ Installation & Setup

### 1️⃣ Install Dart
If Dart is not installed, download it from:  
👉 [https://dart.dev/get-dart](https://dart.dev/get-dart)

Verify installation:
```bash
dart --version
```

### 2️⃣ Clone Repository
```
git clone https://github.com/vikashbaria/Dart-Learning/edit/main/Resturant%20System%20Pizzamizza
cd pizza-mizza
```

### 3️⃣ Run Application
```
dart run main.dart
```

# 🎥 Demo Video

🎬 [Click here to watch demo video](https://github.com/vikashbaria/Dart-Learning/raw/refs/heads/main/Resturant%20System%20Pizzamizza/Pizza%20Mizza%20AppProject.mp4)



---
## Main Menu
```
-------------------  WELCOME TO PIZZA MIZZA -------------------

Shop Information:
Address: Lakhani Corner Shop No 4 Block 13-A Near Bolan Saji
Gulshan-e-Iqbal, Karachi
Contact: 0323-9503550
Timings: 4:30 PM to 3:00 AM

MAIN MENU:
1) Create Your Account
2) Login (User/Admin)
3) Exit

```

## Order Pizza
```
🍕 Available Pizzas:
1) Small - Rs. 250 (School Child Rs. 200)
2) Medium - Rs. 450 (School Child Rs. 400)
3) Large - Rs. 600 (School Child Rs. 550)

Select size (1-3): 2
Add Extras? (y/n): y
1) Extra Cheese (+50)
2) Extra Sauce (+30)
3) Cold Drink (+100)
Enter choices separated by comma (e.g. 1,3): 1,3
✅ Order placed for Medium Pizza - Rs. 600 [Extras: Extra Cheese, Cold Drink]
```

## Admin Panel
```
---- ADMIN PANEL ----
1) View Total Users
2) View Total Orders
3) View Sales Report
4) Logout

📊 Sales Report:
Small Pizzas Sold: 5
Medium Pizzas Sold: 8
Large Pizzas Sold: 3
💰 Total Revenue: Rs. 8900
```

👨‍💻 Author

Developed by Vikash Harjeewan ✨
For learning Dart and practicing console-based applications.
