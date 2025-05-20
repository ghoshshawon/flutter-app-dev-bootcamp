## 📱 What is Flutter?

Flutter is an open-source UI toolkit created by Google. It allows developers to build applications for Android, iOS, web, and desktop from a single codebase using the Dart programming language.

---

## 1. Why Flutter? ✨

- **Hot Reload** – See changes **instantly** after saving your code. No need to restart the app.
- **Cross-Platform** – Build **Android, iOS, Web, and Desktop** apps from a **single codebase**.
- **Open Source** – Free to use with full access to the original source code.
- **Widget-Based UI** – Everything in Flutter is a widget, giving you **full control and flexibility**.
- **Rich Ecosystem** – Large community, tons of plugins, and helpful documentation.

---

## ⚖️ Flutter vs Others

| Feature             | Flutter     | React Native | Native (Kotlin/Swift) |
|---------------------|-------------|--------------|-----------------------|
| Code Sharing        | ✅          | ✅          | ❌                    |
| UI Flexibility      | High        | Medium       | High                  |
| Performance         | High        | Medium       | High                  |
| Hot Reload          | ✅          | ✅          | ❌                    |
| Learning Curve      | Easy        | Medium       | Hard                  |

## Why is Flutter called a cross-platform framework when it uses native components internally?
Expected Thought: Because Flutter compiles to native ARM or x86 code, but provides a unified codebase for multiple platforms using its own rendering engine.

## What’s the difference between Hot Reload and Hot Restart in Flutter?
Trick: Hot reload keeps the app state, while hot restart resets the app’s state.

## Why is everything a widget in Flutter? Is it a benefit or a limitation?
Trick: It's a design philosophy – it offers full customization and composability, which is a benefit but can also make the widget tree complex if not managed well.

## What does runApp() do in a Flutter app? Where does it come from?
Trick: runApp() is a Flutter-provided function that attaches the given widget to the screen. It comes from the Flutter framework, not from Dart core.

## If Flutter is open-source, how can you access its source code?
Expected Answer: From its GitHub repo – https://github.com/flutter/flutter

## What’s the difference between pubspec.yaml and pubspec.lock?
Trick:

pubspec.yaml is where you declare your dependencies.

pubspec.lock locks the specific versions used to ensure consistency across teams.

## Can you modify the Android or iOS code directly in a Flutter app? Why would you do that?
Trick: Yes, under /android and /ios. You may do it to add native functionality or plugins that aren't available in Dart.


