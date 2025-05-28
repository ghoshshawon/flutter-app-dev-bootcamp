# 📘 Day-7 – Quizzler App & Dart OOP Concepts

## ✅ Overview
Learned how to build a True/False Quiz App using Flutter and applied Object-Oriented Programming (OOP) principles in Dart. Practiced code modularization, conditionals, and UI interactivity.

## ✅ Project: Quizzler – A True/False Quiz App

### 🔹 Features
- Simple true/false quiz interface  
- Score tracking with icons  
- Organized logic using separate classes (`Question`, `QuizBrain`)  
- Used Dart Lists, conditionals, and OOP features  

## ✅ Flutter UI Concepts Used

### 1. Using `Expanded` & `Text` Widgets
```dart
Expanded(
  child: Center(
    child: Text(
      'Question Text',
      style: TextStyle(fontSize: 25.0, color: Colors.white),
    ),
  ),
)
```
## 🔹Elevation in Flutter (Real-World Example)
Elevation in Flutter controls the shadow effect of widgets, giving them a sense of depth. For example, in an AppBar, setting elevation: 20 increases the shadow effect below it:

dart
```
AppBar(
  title: Text('Elevation Example'),
  elevation: 20, // Higher value = more shadow
)
```
This property is particularly useful for UI elements like Cards and Containers to create a layered effect.

## 🔹 Actions in Flutter
Actions in Flutter map Intents to Actions, allowing widgets to respond to user interactions efficiently. They are often used with Shortcuts for keyboard navigation. Example:

dart
```
Actions(
  actions: <Type, Action<Intent>>{
    ActivateIntent: CallbackAction<ActivateIntent>(
      onInvoke: (intent) => print('Activated!'),
    ),
  },
  child: TextButton(
    onPressed: () => Actions.invoke(context, ActivateIntent()),
    child: Text('Press Me'),
  ),
)
```
This setup allows the button to trigger an action when pressed.

## 🔹 Icons in Flutter (Inner Properties)
Flutter provides a vast collection of Material Icons that can be customized using properties like size, color, and semanticLabel:

dart
```
Icon(
  Icons.favorite,
  color: Colors.red,
  size: 30.0,
  semanticLabel: 'Favorite Icon',
)
Icons are essential for UI design, improving accessibility and user experience.
```
## 🔹 Lists in Dart (Creating & Using by Index)
Dart Lists are similar to arrays and allow indexed access:

dart
```
List<String> fruits = ['Apple', 'Banana', 'Cherry'];
print(fruits[1]); // Output: Banana
You can also modify elements using their index:

dart
fruits[2] = 'Mango';
print(fruits); // Output: ['Apple', 'Banana', 'Mango']
```
