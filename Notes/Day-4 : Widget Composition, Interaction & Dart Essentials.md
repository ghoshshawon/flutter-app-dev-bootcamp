# Flutter Essentials

### ✅ What is `flex`?
**Q:** What is `flex` in Flutter?  
**A:** The `flex` property defines how much space an `Expanded` widget takes relative to others.  
For example, `flex: 2` takes twice as much space as `flex: 1`.

### ✅ Why can't we use `Expanded` inside `Padding`?
**Q:** Why can't `Expanded` be placed inside `Padding`?  
**A:** `Expanded` must be a direct child of `Row`, `Column`, or `Flex`. `Padding` isn’t a layout widget, so it doesn’t support `Expanded`.

#### ❌ Incorrect:
```dart
Padding(
  padding: EdgeInsets.all(8),
  child: Expanded( // ❌ Error!
    child: Text("Hello"),
  ),
);
```
### ✅ Correct:
```dart
Row(
  children: [
    Expanded(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text("Hello"),
      ),
    ),
  ],
);
```
### ✅ What is Image.asset?
Q: What does Image.asset do? A: Loads an image from the app’s local assets. The image path must be defined in pubspec.yaml.

🔸 Example:
```dart
Image.asset('images/dice1.png');
```
### ✅ Flutter Outline Panel (Android Studio)
Q: What is the Flutter Outline Panel in Android Studio? A: A tool to visually navigate the widget tree.

Open via: View > Tool Windows > Flutter Outline.

### ✅ What is Alt + Enter?
Q: What does Alt + Enter do in Android Studio? A: A shortcut used to:

Fix code

Wrap with widgets

Import libraries

Great for quick refactoring.

### ✅ What is GestureDetector?
Q: What does GestureDetector do? A: It detects user gestures like tap, double-tap, long press, etc., making widgets interactive.

🔸 Example:
```dart
GestureDetector(
  onTap: () {
    print("Image tapped");
  },
  child: Image.asset('images/dice1.png'),
);
```
### ✅ Types of Buttons in Flutter
Q: What are the types of buttons available in Flutter? A: Various button types with different styles:

Button Type	Description	Docs Link
ElevatedButton	Raised button with shadow	Docs
TextButton	Flat text-only button	Docs
OutlinedButton	Border-only style button	Docs
IconButton	Icon-only button	Docs
### ✅ What is VoidCallback?
Q: What is VoidCallback? A: A function type that takes no arguments and returns no value, commonly used in event handlers like onPressed or onTap.

🔸 Example:
```dart
ElevatedButton(
  onPressed: () {
    print("Clicked!");
  },
  child: Text("Click"),
);
```
### ✅ Dart Functions: Named vs Anonymous
Q: What are named, anonymous, and arrow functions in Dart? A: Different ways to define functions:

🔸 Named Function:
dart
void greet() {
  print("Hello");
}
🔸 Anonymous Function:
```dart
() {
  print("Hi there");
}
```
🔸 Arrow Function:
```dart
() => print("Quick call");
```
### ✅ Using variables in Dart
Q: How does Dart handle variables? A: Dart is statically typed, meaning the type is checked at compile time.

## ✅ Best Practice:
```dart
int count = 5;
String name = "Alice";
```
⚠️ Avoid:
```dart
var name = "Bob";       // Less clear
dynamic score = 100;    // Can lead to bugs
```
### ✅ What is setState()?
Q: What is setState() used for? A: It’s a method used in StatefulWidget to update the UI dynamically, triggering a rebuild of the widget.

🔸 Example:
```dart
setState(() {
  counter++;
});
```
### 📘 Summary
Q: What does Expanded + flex do? A: Fills available space proportionally.

Q: Can you put Expanded inside Padding? A: No, instead put Padding inside Expanded.

Q: What is Image.asset used for? A: Displays local images.

Q: What does GestureDetector do? A: Makes widgets (e.g., images) respond to taps.

Q: How does Alt + Enter help in Android Studio? A: Fast fixes, wrap widgets, refactor easily.

Q: What button types exist in Flutter? A: Use ElevatedButton, TextButton, IconButton, etc.

Q: What is VoidCallback? A: Callback with no parameters or return value.

Q: What types of functions exist in Dart? A: Named, anonymous, and arrow functions.

Q: Is Dart statically typed? A: Yes, avoid var and dynamic when possible.

Q: How does setState() work? A: Use it to update your UI dynamically.
