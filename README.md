# Contact List App

This is a simple Flutter app that displays a list of contacts and allows the user to view contact details by tapping on a contact.

## Screenshots
# Image-1
![Screenshot_8](https://github.com/mdrahib46/Live-Test-8/assets/57681390/1ba886a5-e27b-477c-a88f-4284863869a2)
# Image-2
![Screenshot_9](https://github.com/mdrahib46/Live-Test-8/assets/57681390/923aee0a-ca76-4d5e-89ba-a0d9f487b0e9)

## Features

- Displays a list of contacts
- Tapping on a contact shows their details in a modal bottom sheet

## Dependencies

The following dependencies are used in this project:

- `flutter/material.dart`: Provides the basic widgets and functionalities for building Flutter apps.
- `live_test_8/ContactClass.dart`: Contains the `Contact` class used for storing contact information.

## Usage

To run this app, follow these steps:

1. Install Flutter: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
2. Clone this repository: `git clone https://github.com/your-username/your-repository.git`
3. Open the project in your preferred IDE (e.g., Visual Studio Code)
4. Run the app using the `flutter run` command or by clicking the run button in your IDE.

## Code Overview

- The `main()` function in the `main.dart` file sets up the app by running the `ContactListApp` widget.
- The `ContactListApp` widget is a `MaterialApp` that defines the app's title and sets the home screen to the `ContactListScreen`.
- The `ContactListScreen` widget is a `StatefulWidget` that maintains a list of contacts.
- The `build()` method of `ContactListScreen` builds the app's UI, including an `AppBar` and a `ListView.separated` widget that displays the list of contacts.
- Tapping on a contact triggers the `_showContactDetails()` method, which shows the contact's details in a modal bottom sheet.

## Contact Class

The `Contact` class, defined in `ContactClass.dart`, represents a contact and contains the following properties:

- `name` (String): The name of the contact.
- `email` (String): The email address of the contact.
- `phone` (String): The phone number of the contact.

## License

[MIT License](LICENSE)
