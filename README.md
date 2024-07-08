## Flutter Localization with Bloc, State Management & Shared Preferences

This repository showcases a Flutter application with integrated localization features leveraging Bloc state management and Shared Preferences for language persistence.

## Project Structure

The project is organized into the following folders:

- **lib:** Contains the application's source code.
    - **core:** Encapsulates core functionalities.
        - **widgets:** Reusable widgets, including a language switcher.
    - **generated:** Auto-generated files from localization tools.
    - **intl:** Handles localization resources.
    - **110n:** Contains language-specific files for translation.
    - **screen:**  Screen-related logic and widgets.
        - **bloc:** Implements Bloc patterns for state management.

## Features

- **Language Switching:** Users can seamlessly switch between different languages.
- **Bloc State Management:** State management using BLoC pattern for efficient data handling.
- **Shared Preferences:** Stores the user's preferred language for persistent settings.
- **Localization:** Supports multiple languages through localization resources.

## Usage

1. **Install dependencies:** `flutter pub get`
2. **Run the app:** `flutter run`
3. **Switch languages:** Utilize the provided language switcher to toggle between supported languages.

## Implementation Details

- **Localization:** Uses the `flutter_localizations` package for localization support.
- **Bloc:** Implements a simple language-switching bloc for managing language state.
- **Shared Preferences:** Utilizes the `shared_preferences` package to save and retrieve the user's selected language.

