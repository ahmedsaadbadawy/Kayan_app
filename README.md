# Kayan App

A Flutter application for real estate property management and exploration.

## Project Overview

Kayan App is a mobile application built with Flutter that provides users with a platform to browse properties, view finishes, and read blogs. It features:
- Multi-language support (English and Arabic)
- Responsive UI design
- Supabase integration for backend services
- Video player integration
- Property and finishes management
- Onboarding experience

## Tech Stack

- **Flutter SDK ^3.10.0
- **Dart**
- **State Management**: flutter_bloc
- **Routing**: go_router
- **Backend**: Supabase
- **Localization**: flutter_localizations
- **UI Utilities**: flutter_screenutil, cached_network_image
- **Video Player**: video_player, chewie
- **Error Handling**: dartz
- **HTTP Client**: dio
- **Environment Variables**: flutter_dotenv
- **Local Storage**: shared_preferences

## Getting Started

### Prerequisites

- Flutter SDK (version ^3.10.0 or higher)
- Dart SDK
- A Supabase project
- Android Studio / VS Code

## Project Structure

```
lib/
├── core/
│   ├── errors/
│   │   └── failurs.dart
│   ├── layout/
│   │   ├── my_appbar.dart
│   │   └── my_sliver_appbar.dart
│   └── utils/
│       ├── app_router.dart
│       ├── helpers/
│       │   └── spaces.dart
│       ├── themes/
│       │   ├── theme_color.dart
│       │   └── theme_text.dart
│       └── widgets/
│           ├── about_property.dart
│           ├── local_rounded_image.dart
│           ├── my_video_player.dart
│           ├── property_details_grid.dart
│           ├── property_details_grid_card.dart
│           └── rounded_image.dart
├── features/
│   ├── blogs/
│   │   ├── data/
│   │   │   └── blog_model.dart
│   │   └── ui/
│   │       ├── blog_details_screen.dart
│   │       ├── blogs_screen.dart
│   │       └── widgets/
│   │           └── blog_card.dart
│   ├── finishes/
│   │   ├── data/
│   │   │   ├── Repos/
│   │   │   │   ├── finishes_repo.dart
│   │   │   │   └── finishes_repo_impl.dart
│   │   │   └── models/
│   │   │       └── finishes_model.dart
│   │   ├── manager/
│   │   │   └── finishes_cubit/
│   │   │       ├── finishes_cubit.dart
│   │   │       └── finishes_state.dart
│   │   └── ui/
│   │       ├── finishes_details_screen.dart
│   │       ├── finishes_screen.dart
│   │       └── widgets/
│   │           └── finishes_list_view.dart
│   ├── home/
│   │   └── ui/
│   │       ├── home_screen.dart
│   │       └── widgets/
│   │           ├── category_card.dart
│   │           └── home_categories_section.dart
│   ├── on_boarding/
│   │   ├── data/
│   │   │   └── onbourding_model.dart
│   │   └── ui/
│   │       ├── on_boarding_screen.dart
│   │       └── widgets/
│   │           ├── on_boarding_page_view.dart
│   │           ├── onboarding_dot_indicator.dart
│   │           └── onboarding_skip_button.dart
│   └── properties/
│       ├── data/
│       │   ├── models/
│       │   │   └── property_model.dart
│       │   └── repos/
│       │       ├── properties_repo.dart
│       │       └── properties_repo_impl.dart
│       ├── manager/
│       │   └── properties_cubit/
│       │       ├── properties_cubit.dart
│       │       └── properties_state.dart
│       └── ui/
│           ├── properties_screen.dart
│           ├── property_details_screen.dart
│           └── widgets/
│               ├── properties_list_view.dart
│               ├── property_card.dart
│               └── property_details_info.dart
├── l10n/
│   ├── app_ar.arb
│   ├── app_en.arb
│   ├── app_localizations.dart
│   ├── app_localizations_ar.dart
│   └── app_localizations_en.dart
├── manager/
│   └── locale_cubit/
│       ├── locale_cubit.dart
│       └── locale_state.dart
└── main.dart
```

## Core Modules

### 1. Main App Initialization (`main.dart`)

The entry point of the application. It initializes:
- Flutter bindings
- Native splash screen
- Environment variables via `flutter_dotenv`
- Supabase
- Shared preferences
- App router

### 2. Routing (`core/utils/app_router.dart`)

Uses `go_router` for navigation. Defines the following routes:
- `/` - Onboarding screen
- `/HomeScreen` - Home screen
- `/PropertiesScreen` - Properties list screen
- `/FinishesScreen` - Finishes list screen
- `/BlogScreen` - Blogs list screen
- `/PropertyDetailsScreen` - Property details screen
- `/FinishesDetailsScreen` - Finishes details screen
- `/BlogDetailsScreen` - Blog details screen

### 3. Localization (`manager/locale_cubit/`)

Manages language switching between English and Arabic using `flutter_bloc` and `flutter_localizations`.

### 4. Features

#### Properties Feature
- **Models**: `PropertyModel` - Represents a property with details like title, price, location, etc.
- **Repos**: Abstract `PropertiesRepo` and `PropertiesRepoImpl` for data fetching
- **Cubit**: `PropertiesCubit` for state management
- **UI**: `PropertiesScreen`, `PropertyDetailsScreen`

#### Finishes Feature
- **Models**: `FinishesModel` - Represents property finishes
- **Repos**: Abstract `FinishesRepo` and `FinishesRepoImpl`
- **Cubit**: `FinishesCubit`
- **UI**: `FinishesScreen`, `FinishesDetailsScreen`

#### Blogs Feature
- **Models**: `BlogModel` - Represents a blog post
- **UI**: `BlogsScreen`, `BlogDetailsScreen`

#### Onboarding Feature
- **Models**: `OnbourdingModel`
- **UI**: `OnBoardingScreen` with page view and indicators

## Configuration

### Pubspec.yaml configurations:
- **App name: `kayan_app`
- **Version**: 1.0.0+1
- **SDK constraint**: ^3.10.0
- **Assets**:
  - `.env` file
  - `assets/images/` directory
- **Fonts**: Cairo font family (Arabic support)
- **Launcher icons**: Configured via `flutter_launcher_icons`
- **Splash screen**: Configured via `flutter_native_splash`

## Contribution Guidelines

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is a private package (publish_to: none)

