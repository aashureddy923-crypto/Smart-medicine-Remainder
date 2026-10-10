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

### Experiment 1 – Getting Started with Flutter and Dart

I started by setting up the Flutter development environment and creating the project. I explored the basic project files and understood how a Flutter application starts running.

I also worked with Dart syntax and the `main()` function, which acts as the entry point of the application. This helped me understand the basic structure before moving on to the actual app screens.

### Experiment 2 – Working with Flutter Widgets

In this part, I used Flutter widgets to build the application's user interface. Widgets such as `Text`, `Container`, `Icon`, `Card`, `Row`, `Column`, and `Scaffold` helped me arrange the content on different screens.

I used these widgets to create the home screen, medicine list, and other parts of the application. I also learned how padding, alignment, and spacing affect the overall appearance of a screen.

### Experiment 3 – Designing the Application Screens

After learning the basic widgets, I worked on arranging the app screens and making the layout consistent.

I used separate Dart files for different screens instead of writing the entire application in one file. This made it easier to work on each page individually and maintain the same style throughout the app.

### Experiment 4 – Navigation Between Screens

The application contains multiple screens, so navigation is an important part of the project.

I worked on moving between the home screen, medicine list, add medicine page, medicine details, and other sections. I also used bottom navigation to make the main sections easier to access.

This helped me understand how screens can communicate with one another and how information can be passed back after completing an action.

### Experiment 5 – Managing Application State

The medicine list changes whenever a user adds, edits, or deletes an entry. For this, I used stateful widgets and `setState()` where the interface needs to update after a change.

For example, after adding a medicine, the updated list can be displayed instead of requiring the entire app to be reopened manually.

Working on this part helped me understand the difference between a screen that only displays information and one that needs to respond to user actions.

### Experiment 6 – Reusable Widgets and UI Organization

As the number of screens increased, I organized common interface elements into separate widget files.

The project includes files such as `medicine_card.dart` and `bottom_nav.dart`. Keeping reusable components separate avoids repeating the same UI code in multiple places and makes later changes easier.

I also worked on keeping the colours, icons, spacing, and layout consistent across the application.

### Experiment 7 – Forms and User Input

The app has screens where users can enter information, such as the login, registration, and add medicine pages.

I worked on arranging the input fields and buttons and handling the information entered through the interface. The add and edit medicine flows allow the medicine information to be entered or updated.

This part gave me practice in building forms and connecting user input to the application's functionality.

### Experiment 8 – Handling User Actions

I added interactions for the main actions available in the app, such as opening medicine details, adding a medicine, editing its information, and deleting an entry.

These actions connect the interface with the application logic. I also worked on updating the displayed information after a medicine is changed.

### Experiment 9 – Saving Data Locally

Initially, the medicine information was handled by the application while it was running. I then added local storage using the `shared_preferences` package.

The file `medicine_storage.dart` handles saving and loading the medicine list. JSON encoding and decoding are used to convert the list into a format that can be stored and retrieved.

This allows the app to load saved medicine information when it is opened again, rather than relying only on the current screen state.

### Experiment 10 – Testing and Debugging

During development, I checked the application for errors and tested the different screens and actions.

I used commands such as `flutter analyze` to identify code issues and worked on correcting errors when they appeared. I also checked the medicine list, screen navigation, and local storage functionality during development.

This part helped me understand that testing and debugging are important because even a small issue in one file can affect another part of the application.

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

Here are some screenshots of the application.

Add screenshots of the actual app here, such as the splash screen, login page, home screen, medicine list, add medicine page, and medicine details page.

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
