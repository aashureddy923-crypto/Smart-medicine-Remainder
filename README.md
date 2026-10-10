# Smart Medicine Reminder

## About the Project

Smart Medicine Reminder is a mobile application that I developed using Flutter and Dart as part of my Flutter lab project. The idea behind this project is to make it easier to manage daily medicines instead of having to remember every medicine and its details separately.

The app has different screens for login, registration, the home page, medicines, medicine details, editing medicines, and profile information. Users can add a medicine, view its details, make changes, and delete it when it is no longer needed. The home screen also displays the medicine list so that the information is available in one place.

While working on this project, I got to practice the Flutter concepts I learned in the lab. I started with the basic screen designs and gradually worked on navigation, reusable widgets, handling user input, and saving medicine information locally. I also used Git and GitHub to maintain the project and upload my code.

This is still a learning project, and I plan to improve it further as I learn more about Flutter.

## What the App Can Do

- Login and registration screens.
- Home screen with a medicine schedule.
- Add new medicines.
- View the list of medicines.
- Open and view medicine details.
- Edit the details of an existing medicine.
- Delete medicines from the list.
- Save medicine information locally using SharedPreferences.
- Navigate between the main sections using bottom navigation.
- Reuse common UI components to keep the code organized.

## Technologies Used

- Flutter – to build the mobile application.
- Dart – to write the application code.
- Material Design – for the basic layout and UI components.
- SharedPreferences – to store medicine data locally.
- JSON – to convert medicine data into a format that can be saved and loaded.
- Visual Studio Code – to write and manage the code.
- Git and GitHub – to track changes and maintain the project online.

## Project Structure

I kept the code in separate files so that each screen and its related functionality would be easier to find and update.

```text
smart_medicine_reminder/
│
├── lib/
│   ├── main.dart
│   │
│   ├── navigation/
│   │   └── main_navigation_screen.dart
│   │
│   ├── screens/
│   │   ├── splash_screen.dart
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   ├── home_screen.dart
│   │   ├── medicines_screen.dart
│   │   ├── add_medicine_screen.dart
│   │   ├── medicine_details_screen.dart
│   │   ├── edit_medicine_screen.dart
│   │   └── profile_screen.dart
│   │
│   ├── services/
│   │   └── medicine_storage.dart
│   │
│   └── widgets/
│       ├── bottom_nav.dart
│       └── medicine_card.dart
│
├── android/
├── ios/
├── macos/
├── web/
├── test/
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

### A Quick Look at the Folders

- `main.dart` – The starting point of the application.
- `screens/` – Contains the different pages of the app.
- `navigation/` – Handles navigation between the main sections.
- `widgets/` – Contains reusable UI components.
- `services/` – Contains the code used to save and load medicine data.
- `test/` – Contains the project's test files.
- `pubspec.yaml` – Contains the package dependencies and project configuration.

## Experiment-Wise Work

The following sections describe how the concepts from the Flutter lab were used while developing the application. The exact experiment titles and numbering should follow the lab manual.

## Experiment-Wise Work

### Experiment 1 – Getting Started with Flutter and Dart

In this experiment, I learned about Flutter and Dart and how they are used to develop mobile applications. Flutter is a framework used to create user interfaces, while Dart is the programming language used to write the application code.

I set up the Flutter project and explored its basic folder structure. I also learned about the `main()` function, which is the starting point of a Flutter application, and how the `runApp()` function starts displaying the app.

This experiment helped me understand the basic setup required before developing the Smart Medicine Reminder application.

### Experiment 2 – Working with Flutter Widgets

In this experiment, I learned that Flutter uses widgets to build the user interface. Almost every element on the screen, such as text, buttons, icons, and layouts, is created using widgets.

I used widgets like `Text`, `Container`, `Scaffold`, `AppBar`, `Icon`, `Card`, `Row`, and `Column` while designing my application screens. Each widget has a different purpose. For example, `Text` displays information, `Icon` displays symbols, and `Row` and `Column` help arrange elements horizontally and vertically.

By using these widgets, I created the basic layout of the home screen and the medicine-related screens.

### Experiment 3 – Designing the Application Screens

In this experiment, I focused on arranging the different elements on the screen and making the application easy to use. A good layout helps users find the information they need without confusion.

I used padding, margins, alignment, colours, and text styles to organize the content. I also created separate screens for different purposes instead of keeping all the interface code in a single file.

For Smart Medicine Reminder, I designed screens such as the splash screen, login page, registration page, home page, and medicine list. This helped me understand how different widgets work together to form a complete user interface.

### Experiment 4 – Navigation Between Screens

In this experiment, I learned how to move from one screen to another in a Flutter application. Navigation is important because an application usually contains multiple pages that are connected to one another.

I used Flutter's navigation features to open different screens based on the user's actions. For example, users can move from the medicine list to the add medicine screen, open a medicine's details, and access other sections of the application.

I also worked on bottom navigation so users can move between the main sections more easily. This experiment helped me understand how to connect different screens and return information from one screen to another when needed.

### Experiment 5 – Managing Application State

In this experiment, I learned how to update the user interface when the data in an application changes. In Flutter, a `StatefulWidget` is useful when a screen needs to change after a user performs an action.

I used `setState()` to refresh the displayed information when necessary. For example, when a medicine is added, edited, or deleted, the medicine list needs to reflect the changes.

This concept is useful in Smart Medicine Reminder because the medicine information is not always the same. The application needs to update the screen whenever the user makes changes.

### Experiment 6 – Reusable Widgets and Code Organization

In this experiment, I focused on organizing the code and reusing common UI components. When an application contains many screens, writing the same code repeatedly can make the project difficult to maintain.

To avoid this, I separated the application into different folders for screens, navigation, widgets, and services. I also created reusable components such as `medicine_card.dart` and `bottom_nav.dart`.

Reusable widgets help keep the interface consistent and make it easier to modify common elements later. This experiment helped me understand the importance of writing organized and manageable code.

### Experiment 7 – Forms and User Input

In this experiment, I learned how to accept information from users through input fields and forms. Forms are useful when an application needs the user to enter details instead of displaying fixed information.

In my project, the login and registration screens contain fields for user input, while the add medicine screen is used to enter medicine details. The edit medicine screen allows existing information to be changed.

I worked on arranging the fields and buttons and connecting the entered information to the relevant application screens. This helped me understand how user input can be handled in a Flutter application.

### Experiment 8 – Handling User Actions

In this experiment, I worked on making the application respond to user interactions. Buttons and other interactive elements allow users to perform actions instead of simply viewing the screen.

In Smart Medicine Reminder, users can select a medicine, open its details, add a new entry, edit existing information, and delete a medicine. The application needs to respond to these actions and update the displayed information where required.

This experiment helped me understand how the user interface and application logic work together to provide a useful experience.

### Experiment 9 – Saving Data Locally

In this experiment, I learned how to store application data locally so that it can be loaded again later. Without data storage, information held only in the current application state may be lost when the app is restarted.

I used the `shared_preferences` package to save the medicine information on the device. I created a separate file named `medicine_storage.dart` to handle saving and loading the data.

The medicine list is converted into JSON format before it is saved and converted back when it is loaded. This allows the application to retrieve previously saved medicine information instead of depending only on temporary data in memory.

This experiment helped me understand the basics of local data storage and how it can be connected to different screens in an application.

### Experiment 10 – Testing and Debugging

In this experiment, I learned why testing and debugging are important during application development. Even if the interface looks correct, errors may occur when navigating between screens, updating information, or loading saved data.

I used Flutter tools and terminal commands to check the project and identify issues. The `flutter analyze` command helped me find code warnings and other issues that needed attention.

I also checked the main application flows, including navigation, medicine management, and local storage. When errors appeared, I worked on understanding the cause and correcting the code.

This experiment helped me understand that testing is an important part of development because it improves the reliability of the application.


## Running the Project

To run the application on your computer, Flutter and the required Android development tools should be installed.

First, clone the repository:

```bash
git clone https://github.com/aashureddy923-crypto/Smart-medicine-Remainder.git
```

Move into the project folder:

```bash
cd Smart-medicine-Remainder
```

Get the required packages:

```bash
flutter pub get
```

Check the project for code issues:

```bash
flutter analyze
```

Connect an Android phone with USB debugging enabled or start an emulator, then run:

```bash
flutter run
```

## Screenshots





## What I Learned

Working on Smart Medicine Reminder helped me understand how the different parts of a Flutter application fit together. I got practice in creating screens, using widgets, navigating between pages, handling user input, and updating information on the screen.

I also learned how to organize code into separate files, save data locally, debug problems, and push changes to GitHub. Some parts took a few attempts to get working properly, but fixing those issues helped me understand the code better.

## Future Improvements

There are still a few things I would like to improve as I continue working on the project:

- Add actual reminder notifications at the selected medicine times.
- Add options to manage medicine timings and dosage more clearly.
- Improve the validation and feedback shown on forms.
- Add a more reliable way to manage user accounts and protect personal data.
- Improve the medicine schedule so it can show upcoming doses more accurately.

## Conclusion

Smart Medicine Reminder is my attempt at applying the Flutter concepts learned in the lab to a useful mobile application. It started with creating the basic screens and gradually grew to include navigation, medicine management, and local data storage.

I will continue working on the project and adding improvements as I learn more.

---

Developed as a Flutter learning project.
