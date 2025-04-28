# NotSoFat

A Flutter application with multilingual support (English and Chinese), Riverpod for state management, and Firebase authentication.

## Features

- **Multilingual Support**: English and Chinese languages
- **State Management**: Using Flutter Riverpod
- **Authentication**:
  - Email/Password Sign-in
  - Email/Password Sign-up
  - Email Verification
  - Password Reset (UI only)
  - Social Login UI (Apple and Google buttons)

## Project Structure

```
lib/
├── l10n/                  # Localization files
│   ├── app_en.arb         # English translations
│   └── app_zh.arb         # Chinese translations
├── models/                # Data models
├── providers/             # Riverpod providers
│   └── auth_provider.dart # Authentication providers
├── screens/               # UI screens
│   └── auth/              # Authentication screens
│       ├── login_screen.dart
│       ├── signup_screen.dart
│       └── verification_screen.dart
├── services/              # Business logic services
│   └── auth_service.dart  # Authentication service
├── utils/                 # Utility functions
├── widgets/               # Reusable widgets
└── main.dart              # Application entry point
```

## Getting Started

### Prerequisites

- Flutter SDK (version 3.0.0 or higher)
- Dart SDK (version 2.17.0 or higher)
- Firebase project (for authentication)

### Installation

1. Clone the repository
2. Run `flutter pub get` to install dependencies
3. Configure Firebase:
   - Create a Firebase project
   - Add Android and iOS apps to your Firebase project
   - Download and add the configuration files
   - Follow the Firebase Flutter setup guide

### Running the App

```bash
flutter run
```

## Localization

The app supports English and Chinese languages. To add more languages:

1. Create a new ARB file in the `lib/l10n` directory (e.g., `app_fr.arb` for French)
2. Add the new locale to the `supportedLocales` list in `main.dart`

## Authentication Flow

1. User opens the app and sees the login screen
2. User can either:
   - Sign in with existing credentials
   - Navigate to the sign-up screen to create a new account
3. After signing up, the user receives a verification email
4. The app shows a verification code input screen
5. After verification, the user is authenticated

## License

This project is licensed under the MIT License.
