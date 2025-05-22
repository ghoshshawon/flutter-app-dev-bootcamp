### 📘 Day 6 – Flutter Packages, Dependencies, Dart Functions & Arrays
### ✅ What are Flutter Packages?
A package is a collection of pre-written code that adds functionality (e.g., animations, icons, audio).

Flutter supports:

Pub packages (from pub.dev)

Plugin packages (for native access)

Local & Git-based packages

### ✅ How to Add a Package in pubspec.yaml
🔸 Syntax:
yaml
```
dependencies:
  flutter:
    sdk: flutter

  audioplayers: ^3.0.7
```
🔹 What is ^3.0.7?
The caret (^) means:
→ Use latest compatible version that doesn't break changes.

^3.0.7 allows updates up to <4.0.0.

### 📌 More ways to add:
From GitHub

yaml
```
dependencies:
  some_package:
    git:
      url: https://github.com/username/repo
      ref: main
From local path
```

yaml
```
dependencies:
  my_package:
    path: ../my_package/
```
### 🧠 You must run:

bash
```
flutter pub get
To install the packages.
```

### ✅ What are Dependencies?
A dependency is a library your app relies on to function.

These are listed under dependencies: or dev_dependencies: in pubspec.yaml.

### ✅ Dart Functions
🔸 Basic Syntax:
dart
```
void sayHello() {
  print("Hello!");
}
```
🔹 With Return Value:
dart
```
int add(int a, int b) {
  return a + b;
}
```
🔸 Arrow Function:
dart
```
int square(int x) => x * x;
```
### ✅ Calling Functions:
dart
```
void main() {
  sayHello();
  int sum = add(3, 5);
  print("Sum: $sum");
}
```
🔸 Anonymous Function (No name):
dart
```
var greet = () {
  print("Hi from anonymous!");
};
```
📌 Interview Tip:
Know how to pass functions as arguments.

Understand return types.

Be ready to explain the difference between void, dynamic, and var.

### ✅ Arrays in Dart (Lists)
🔸 Syntax:
dart
```
List<String> fruits = ['apple', 'banana', 'mango'];
print(fruits[0]); // apple
```
🔸 Add item:
dart
```
fruits.add('grape');
🔸 Loop:
dart
Copy
Edit
for (var fruit in fruits) {
  print(fruit);
}
```
### ✅ One-Line Main Function
```dart

void main() => runApp(XylophoneApp());
```
This is shorthand for:

```dart
void main() {
  runApp(XylophoneApp());
}
```
###  ✅ Used to reduce boilerplate when only one expression is used.

### ✅ Some Useful Flutter Packages for Design:
Package	Purpose	Link
google_fonts	Custom fonts	google_fonts
font_awesome_flutter	Free icons	font_awesome_flutter
lottie	Animations	lottie
flutter_spinkit	Loading indicators	flutter_spinkit
audioplayers	Audio playback	audioplayers



🖼️ UI Highlights:

Custom background color

Dice button interaction

Random image rendering
