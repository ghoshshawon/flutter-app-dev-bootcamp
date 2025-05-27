# 📘 Day 2 – Flutter UI: Stateless Widgets, Layout, Containers, Styling

---

## ✅ What is a StatelessWidget?

* It’s a widget that **does not change** its state during its lifetime.
* Used when the UI stays the same.
* Ideal for static screens or non-interactive elements.

### 🔸 Example:

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stateless')),
        body: Center(child: Text('Hello, Flutter!')),
      ),
    );
  }
}
```

## 🧠 Real-life example:

Think of a printed **poster**. Once created, it doesn’t change. That’s like a StatelessWidget.

---

## ✅ How to create a StatelessWidget in Android Studio?

* Type `stless` and press Enter.
* It will auto-generate the class.
* Customize the widget name and inside `build()`.

---

## ✅ What is a Container in Flutter?

* A **box model** widget used to design and position UI.
* It's one of the most used layout widgets.

### 🔹 Properties of `Container`:

* `height`, `width`: Sets size
* `color`: Background color
* `margin`: Outer spacing
* `padding`: Inner spacing
* `alignment`: Aligns child inside container
* `decoration`: Add borders, gradients, rounded corners, images
* `child`: Widget placed inside the container
* `constraints`: Set min/max dimensions
* `transform`: Apply matrix transformations
* `foregroundDecoration`: Decoration drawn **on top** of the child

### 🔸 Example (full usage):

```dart
Container(
  height: 150,
  width: 150,
  alignment: Alignment.center,
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Colors.black, width: 2),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 3,
        blurRadius: 7,
        offset: Offset(0, 3),
      ),
    ],
    gradient: LinearGradient(
      colors: [Colors.blue, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  child: Text(
    "Styled Box",
    style: TextStyle(color: Colors.white, fontSize: 16),
  ),
)
```

✅ **Pro Tip:** Container is powerful but don’t overuse it for layout. Use `Padding`, `Align`, or `DecoratedBox` if only one feature is needed.

---

## ✅ What is EdgeInsets in Flutter?

Used to give **padding** or **margin** around widgets.

### 🔹 Types:

* `EdgeInsets.all(10)` → all sides
* `EdgeInsets.only(left: 10, top: 5)` → specific sides
* `EdgeInsets.symmetric(horizontal: 10, vertical: 5)` → pairs

---

## ✅ What is mainAxisAlignment?

Used to align widgets **along the main axis** (horizontal in Row, vertical in Column).

### 🔹 Options:

* `start`
* `center`
* `end`
* `spaceBetween`
* `spaceAround`
* `spaceEvenly`

### 🔸 Example:

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [Text("1"), Text("2")],
)
```

---

## ✅ What is crossAxisAlignment?

Used to align widgets **across the main axis**.

### 🔸 Example in Column (horizontal alignment):

```dart
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [Text("Hello"), Text("World")],
)
```

---

## ✅ What is SizedBox?

* A widget that adds **space** between other widgets.
* You can also give it fixed size.

### 🔸 Example:

```dart
SizedBox(height: 20)
```

---

## ✅ What is CircleAvatar?

* Widget for showing a **circular image** or initials.
* Used for profile icons.

### 🔸 Example:

```dart
CircleAvatar(
  radius: 30,
  backgroundImage: NetworkImage("https://example.com/image.jpg"),
)
```

---

## ✅ What is Card widget in Flutter?

* A **Material Design** styled container with:

  * Elevation (shadow)
  * Rounded corners

### 🔸 Example:

```dart
Card(
  elevation: 4,
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text("This is a card"),
  ),
)
```

---

