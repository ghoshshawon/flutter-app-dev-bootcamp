# 📌 Day 8 Notes: Flutter UI & Data Management  

## 1️⃣ Elevation in Flutter  
Elevation adds a **shadow effect** to widgets like `AppBar`, `Card`, or `Container`, giving them depth and improving UI aesthetics.  

### 🛠 Example: Elevated Button  
```dart
ElevatedButton(
  onPressed: () {},
  style: ElevatedButton.styleFrom(
    elevation: 6, // Adds depth
    backgroundColor: Colors.blue,
  ),
  child: Text('Click Me'),
)
```
## ✅ Higher elevation = deeper shadow ✅ Lower elevation = flatter UI appearance

#### 🔹 Real-World Example: Think of a pop-up dialog—the shadow makes it look raised above the background.

### 2️⃣ Actions in AppBar
The actions: [ ... ] property in AppBar allows you to place interactive icons on the right side, typically used for settings, search, or notifications.

🛠 Example: Adding Actions in AppBar
dart
```
AppBar(
  title: Text('My App'),
  actions: [
    IconButton(
      icon: Icon(Icons.search),
      onPressed: () {
        print('Search clicked!');
      },
    ),
    IconButton(
      icon: Icon(Icons.settings),
      onPressed: () {
        print('Settings clicked!');
      },
    ),
  ],
)
```
##  ✅ Multiple icons can be added using a list ✅ Each icon triggers an action when tapped

#### 🔹 Real-World Example: A shopping cart icon in e-commerce apps—it appears in the AppBar as an action.

### 3️⃣ Icons in Flutter
Icons are graphical representations of UI elements that help in navigation or functionality. Flutter provides built-in icons via the Icons class.

#### 🛠 Example: Using Icons
dart
```
Icon(
  Icons.home, // Built-in Flutter icon
  size: 40, // Adjust size
  color: Colors.blue, // Change color
)
```
## ✅ Common icons: Icons.home, Icons.search, Icons.person, etc. ✅ Can be inside buttons, AppBars, or standalone components

#### 🔹 Real-World Example: Every app has navigation icons (Home, Back, Settings, etc.).

### 4️⃣ Lists in Dart
Lists are a fundamental data structure in Dart used to store multiple values dynamically.

#### 🛠 Example: Creating & Using Lists
dart
```
List<String> fruits = ['Apple', 'Banana', 'Cherry'];

for (String fruit in fruits) {
  print(fruit);
}
```
## ✅ Fixed List: List<int> numbers = [1, 2, 3]; ✅ Dynamic List: List<dynamic> items = ['Car', 5, true]; ✅ Adding Items: fruits.add('Mango');

#### 🔹 Real-World Example: A list of quiz questions, where each question is stored separately.

