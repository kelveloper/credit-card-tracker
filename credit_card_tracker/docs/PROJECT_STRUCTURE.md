# Project Structure for Credit Card Tracker

This document outlines the recommended directory and file structure for the Flutter app, supporting scalable development and clear separation of concerns.

## Directory Overview

```
lib/
  core/           # Core utilities, constants, error handling, network helpers
  data/           # Data models, repositories, providers
  features/       # Feature-specific code
    auth/         # Authentication (login, register, session)
      screens/
      widgets/
      controllers/
    dashboard/    # Main dashboard (card list, totals, actions)
      screens/
      widgets/
      controllers/
    cards/        # Card management (add, edit, delete)
      screens/
      widgets/
      controllers/
    payments/     # Payment and balance actions
      screens/
      widgets/
      controllers/
  shared/         # Shared widgets, theme, utilities
    widgets/
    theme/

assets/
  images/
  icons/

test/
  unit/
  widget/
  integration/
```

## File Naming Conventions
- Use `snake_case` for file and folder names (e.g., `add_card_screen.dart`).
- Group related files by feature and type (screen, widget, controller).

## Component Hierarchy
- **Screens:** Top-level UI pages (e.g., `dashboard_screen.dart`).
- **Widgets:** Reusable UI components (e.g., `card_tile.dart`, `balance_summary.dart`).
- **Controllers:** Business logic, state management, and interaction with data/providers.

## Example Feature Structure
```
features/
  dashboard/
    screens/
      dashboard_screen.dart
    widgets/
      card_tile.dart
      total_balance_bar.dart
    controllers/
      dashboard_controller.dart
```

## Notes
- Keep business logic out of UI widgets; use controllers/providers.
- Place shared styles, colors, and themes in `shared/theme/`.
- Use `data/models/` for data classes (e.g., `credit_card.dart`).
- Use `data/repositories/` for Firestore or API interaction logic.

---
This structure will help keep your codebase organized as you add more features! 