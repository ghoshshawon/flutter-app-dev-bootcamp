# 📘 Day 3 – StatefulWidget, setState, Input, Interactivity

---

## ✅ What is a StatefulWidget?

- A widget that **can change its state** dynamically.
- Uses a `State` class to store data.
- Updates the UI using `setState()`.

## 🧠 Real-life example:
Think of a **whiteboard** – you can change it anytime, and others see it immediately.

### 🔸 Example:
```dart
class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Counter')),
        body: Center(child: Text('Count: $counter')),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

---

## ✅ What is setState()?

- A method used to **update the UI** when internal state changes.
- When called, the `build()` function re-runs.

### 🔸 Example:
```dart
setState(() {
  counter++;
});
```

---

## ✅ What is TextField in Flutter?

- Widget for taking user **text input**.

### 🔸 Example:
```dart
TextField(
  decoration: InputDecoration(labelText: "Enter your name"),
  onChanged: (value) {
    print("Typed: $value");
  },
)
```

---

## ✅ What is TextEditingController?

- A controller to **retrieve** or **set** the value of a TextField.

### 🔸 Example:
```dart
final controller = TextEditingController();

TextField(controller: controller),

ElevatedButton(
  onPressed: () {
    print("Input: ${controller.text}");
  },
  child: Text("Submit"),
)
```

---

## ✅ What is ElevatedButton?

- A modern Material button with elevation.

### 🔸 Example:
```dart
ElevatedButton(
  onPressed: () {
    print("Clicked!");
  },
  child: Text("Click Me"),
)
```

---

## ✅ What is Checkbox in Flutter?

- Used for boolean **true/false selection**.

### 🔸 Example:
```dart
bool isChecked = false;

Checkbox(
  value: isChecked,
  onChanged: (value) {
    setState(() {
      isChecked = value!;
    });
  },
)
```

---

# 📘 Summary

- `StatefulWidget`: UI that updates dynamically
- `setState()`: Rebuild the widget tree
- `TextField` and `TextEditingController`: Get user input
- `ElevatedButton`, `Checkbox`: Interactivity in UI
