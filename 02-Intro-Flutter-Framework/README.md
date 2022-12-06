## 1. <u>Creating a new Project and understanding file structure</u>

```
// command to Check flutter version
flutter --version

// command to Create a flutter new project
flutter create

```

### <u>Understanding Structure of the App</u>

- **Android**: where Android related files are stored. We don't change it.
- **iOS**: where iOS files are stored. Not our concern.
- **Lib**: this is where you'll be working on most of the time. By default, it contains a main.dart file, this is the entry point file of the Flutter app.
- **Test**: this is where you put the unit testing code for the app
- **Pubspec.yaml**: this file defines the version and build number of your app. it's also where you define your dependencies. And assets directory.

Note that I've skipped on other folders and files because most of the time you won't really need to touch them.

## 1. <u>What are Widgets</u>

Everything within a Flutter application is a **Widget**, from a simple "Text" to "Buttons" to "Screen Layouts". in Web development we know navbar, text field, div, tables. In flutter all these are called Widgets. That's it.

Every widget will have properties or you can say arguments which we have to pass.
And that property will most of the time accept a widget as its value. Every widget starts with its name followed by ()
