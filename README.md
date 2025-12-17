# Minimalistic To-do App

## A Flutter UI & Local Storage Project

This project is a clean and efficient To-Do mobile application developed using Flutter. It focuses on essential task management features, smooth UI interactions, and persistent local data storage using Hive (NoSQL database).

The app was built as a learning project to master CRUD operations, local database integration, and advanced UI widgets like slidable list items.

## ✨ Key Highlights

- Persistent Storage: Tasks remain saved even after closing the app (using Hive).

- CRUD Operations: Create, Read, Update, and Delete tasks seamlessly.

- Interactive UI: Slide-to-delete and slide-to-complete actions.

- Custom Typography: Modern look using Google Fonts.

- Optimized Performance: Fast read/write speeds with Hive boxes.

- Responsive Layout: Adapts to different screen sizes.

- Theme : Light Mode and Dark Mode That Changes According To Device Settings
## 🛠️ Tech Stack

| Technology       |  Purpose                                 |
|----------------  |------------------------------------------|
| Flutter          |  Cross-platform mobile app development   |
| Dart             |  Core programming language               |
| Hive             |  Fast, lightweight NoSQL local database  |
| Flutter Slidable |  Swipe interactions for list items       |
| Google Fonts     |  Custom typography and styling           |
|  Build Runner    |       Code generation for Hive adapters  |
| VS Code          |        Development environment           |

## 📦 Dependencies

 - google_fonts: ^6.3.3

 - flutter_slidable: ^3.0.0

 - hive: ^2.2.3

 - hive_flutter: ^1.1.0

 - hive_generator: ^1.1.3

 - build_runner: ^2.1.11

## 🚀 Getting Started

Follow the steps below to run the project locally.

### 1️⃣ Clone the Repository

```sh
git clone https://github.com/RavishkaB2003/To-do-App.git
cd todo_app
```


### 2️⃣ Install Dependencies

Ensure Flutter is installed and properly configured, then run:

```sh
flutter pub get
```


### 3️⃣ Run the Application

Connect a physical device or start an emulator:

```sh
flutter run
```

📁 Project Structure Overview

 ```
lib/
├── data/      # Hive database class & adapters
├── pages/     # App screens
├── util/      # Reusable UI widgets
└── main.dart  # App entry point
```


## 🎯 Learning Outcomes

- Implementing Local Database storage using Hive.

- Understanding TypeAdapters and code generation in Flutter.

- Handling User Input with dialog boxes and controllers.

- Implementing Gesture Controls (swipe-to-delete) using external packages.

- Managing state changes for real-time UI updates.

- Use of themes

## 🔮 Future Improvements

 [ ] Checkout flow

 [ ] User authentication

 [ ] Backend integration (Firebase / REST API)

 [ ] Animations and micro-interactions

## 📄 License

This project is open-source and available under the MIT License.

## 👤 Author

Ravishka Bandara
Software Engineering Undergraduate


