# Day-4 - Widget Composition, Interaction & Dart Essentials

### ✅ What is `flex`?

**Q:** What is `flex` in Flutter?
**A:** The `flex` property defines how much space an `Expanded` widget takes relative to others.
🔸 Example:

```dart
Row(
  children: [
    Expanded(flex: 1, child: Container(color: Colors.red)),
    Expanded(flex: 2, child: Container(color: Colors.blue)),
  ],
);
```

### ✅ Why can't we use `Expanded` inside `Padding`?

**Q:** Why can't `Expanded` be placed inside `Padding`?
**A:** `Expanded` must be a direct child of `Row`, `Column`, or `Flex`. `Padding` isn’t a layout widget, so it doesn’t support `Expanded` directly.

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

**Q:** What does Image.asset do?
**A:** Loads an image from the app’s local assets. The image path must be defined in pubspec.yaml.

🔸 Example:

```dart
Image.asset('images/dice1.png');
```

### ✅ Flutter Outline Panel (Android Studio)

**Q:** What is the Flutter Outline Panel in Android Studio?
**A:** A tool to visually navigate the widget tree.

📍 Open via: View > Tool Windows > Flutter Outline.

### ✅ What is Alt + Enter?

**Q:** What does Alt + Enter do in Android Studio?
**A:** A shortcut used to:

* Fix code
* Wrap with widgets
* Import libraries

✅ Great for quick refactoring.

### ✅ What is GestureDetector?

**Q:** What does GestureDetector do?
**A:** It detects user gestures like tap, double-tap, long press, etc., making widgets interactive.

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

**Q:** What are the types of buttons available in Flutter?
**A:** Various button types with different styles:

| Button Type    | Description               |
| -------------- | ------------------------- |
| ElevatedButton | Raised button with shadow |
| TextButton     | Flat text-only button     |
| OutlinedButton | Border-only style button  |
| IconButton     | Icon-only button          |

### ✅ What is VoidCallback?

**Q:** What is VoidCallback?
**A:** A function type that takes no arguments and returns no value. Common in `onPressed`, `onTap`, etc.

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

**Q:** What are named, anonymous, and arrow functions in Dart?
**A:** Ways to define functions:

🔸 Named Function:

```dart
void greet() {
  print("Hello");
}
```

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

**Q:** How does Dart handle variables?
**A:** Dart is statically typed.

✅ Best Practice:

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

**Q:** What is setState() used for?
**A:** Used in `StatefulWidget` to update the UI. It triggers a widget rebuild.

🔸 Example:

```dart
setState(() {
  counter++;
});
```

### ✅ Stateless vs Stateful Widget

**Q:** What is the difference between Stateless and Stateful widget?
**A:**

* **StatelessWidget**: UI does **not change** after it's built.
* **StatefulWidget**: UI **changes** over time (e.g. button click, counter).

🔸 Example:

```dart
class MyStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("I never change");
  }
}

class MyStateful extends StatefulWidget {
  @override
  _MyStatefulState createState() => _MyStatefulState();
}

class _MyStatefulState extends State<MyStateful> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: \$count'),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Text('Increment'),
        )
      ],
    );
  }
}
```

### ✅ Why use AppBar in Stateless but body in Stateful?

**Q:** Why is AppBar often used in StatelessWidget and body in StatefulWidget?
**A:**

* AppBar doesn't change – perfect for StatelessWidget.
* Body usually holds dynamic content – use StatefulWidget.

🔸 Example:

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My App")),
      body: CounterWidget(), // Stateful
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Counter: \$counter"),
        ElevatedButton(
          onPressed: () => setState(() => counter++),
          child: Text("Add"),
        ),
      ],
    );
  }
}
```

### ✅ Full Structure: Stateless vs Stateful Widgets

**🔸 StatelessWidget Structure:**

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Called once, does not update
    return Container();
  }
}
```

**🔸 StatefulWidget Structure:**

```dart
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState(); // creates state object
}

class _MyWidgetState extends State<MyWidget> {
  // Declare variables here

  @override
  void initState() {
    super.initState();
    // Runs when widget is created
  }

  @override
  Widget build(BuildContext context) {
    // Rebuilds when setState is called
    return Container();
  }

  @override
  void dispose() {
    // Cleanup (like closing streams)
    super.dispose();
  }
}
```

### 📘 Summary

* **Expanded + flex**: Takes up space based on `flex` ratio.
* **Expanded inside Padding**: ❌ Not allowed. ✅ Put Padding inside Expanded.
* **Image.asset**: Displays images from local assets.
* **GestureDetector**: Makes any widget respond to touch.
* **Alt + Enter**: Fix, refactor, wrap widget fast in Android Studio.
* **Buttons**: Elevated, Text, Icon, Outlined.
* **VoidCallback**: Function with no params/return. Used in onPressed.
* **Functions**: Named, anonymous, and arrow-style.
* **Variables**: Dart is statically typed. Prefer `int`, `String` over `var`, `dynamic`.
* **setState()**: Used in StatefulWidget to update UI.
* **Stateless vs Stateful**: Stateless = static. Stateful = interactive.
* **AppBar in Stateless**: Doesn't change. Body in Stateful for dynamic UI.
* **Widget Structure**: Understand full widget lifecycle and method purpose.
