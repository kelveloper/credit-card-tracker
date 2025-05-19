# Credit Card Debt Tracker - Project Structure

## Directory Structure

```
lib/
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   └── theme_constants.dart
│   ├── errors/
│   │   └── exceptions.dart
│   ├── network/
│   │   └── firebase_service.dart
│   └── utils/
│       └── validators.dart
├── data/
│   ├── models/
│   │   ├── user_model.dart
│   │   ├── card_model.dart
│   │   ├── balance_model.dart
│   │   ├── payment_model.dart
│   │   └── summary_model.dart
│   ├── repositories/
│   │   ├── auth_repository.dart
│   │   ├── card_repository.dart
│   │   ├── balance_repository.dart
│   │   └── payment_repository.dart
│   └── providers/
│       └── firebase_providers.dart
├── features/
│   ├── auth/
│   │   ├── screens/
│   │   │   ├── login_screen.dart
│   │   │   └── register_screen.dart
│   │   ├── widgets/
│   │   │   └── auth_form.dart
│   │   └── controllers/
│   │       └── auth_controller.dart
│   ├── cards/
│   │   ├── screens/
│   │   │   ├── card_list_screen.dart
│   │   │   └── card_form_screen.dart
│   │   ├── widgets/
│   │   │   ├── card_list_item.dart
│   │   │   └── card_form.dart
│   │   └── controllers/
│   │       └── card_controller.dart
│   ├── balance/
│   │   ├── screens/
│   │   │   ├── balance_screen.dart
│   │   │   └── balance_history_screen.dart
│   │   ├── widgets/
│   │   │   └── balance_card.dart
│   │   └── controllers/
│   │       └── balance_controller.dart
│   └── payments/
│       ├── screens/
│       │   ├── payment_screen.dart
│       │   └── payment_history_screen.dart
│       ├── widgets/
│       │   ├── payment_form.dart
│       │   └── payment_list_item.dart
│       └── controllers/
│           └── payment_controller.dart
├── shared/
│   ├── widgets/
│   │   ├── app_button.dart
│   │   ├── app_text_field.dart
│   │   └── loading_indicator.dart
│   └── theme/
│       └── app_theme.dart
└── main.dart
```

## File Naming Conventions

1. **Dart Files**
   - Use snake_case for file names
   - Suffix widget files with `_widget.dart`
   - Suffix screen files with `_screen.dart`
   - Suffix model files with `_model.dart`
   - Suffix controller files with `_controller.dart`

2. **Class Names**
   - Use PascalCase for class names
   - Suffix widget classes with `Widget`
   - Suffix screen classes with `Screen`
   - Suffix model classes with `Model`
   - Suffix controller classes with `Controller`

## Component Hierarchy

1. **Core Layer**
   - Constants, utilities, and base services
   - Firebase configuration and initialization
   - Error handling and logging

2. **Data Layer**
   - Models for data structures
   - Repositories for data operations
   - Firebase providers and services

3. **Feature Layer**
   - Organized by feature (auth, cards, balance, payments)
   - Each feature contains:
     - Screens
     - Widgets
     - Controllers

4. **Shared Layer**
   - Reusable widgets
   - Theme configuration
   - Common utilities

## State Management
- Using Provider for state management
- Controllers handle business logic
- Repositories handle data operations
- Models represent data structures

## Navigation
- Using named routes
- Centralized route management
- Deep linking support

## Theme
- Material Design based
- Custom color scheme
- Consistent typography
- Responsive layouts

## Testing Structure
```
test/
├── unit/
│   ├── models/
│   ├── repositories/
│   └── controllers/
├── widget/
│   └── screens/
└── integration/
    └── features/
```

## Assets Structure
```
assets/
├── images/
├── icons/
└── fonts/
``` 