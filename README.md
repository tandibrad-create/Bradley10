# ZimRideGuru 🚗

A Flutter-based ridesharing application for Harare, Zimbabwe.

## Features

✅ **Rider Mode**
- View available rides
- Book rides with pricing and seat availability
- Clean card-based UI

✅ **Driver Mode**
- Go online/offline to accept ride requests
- Real-time status indicator

✅ **Architecture**
- Clean separation of concerns (screens, widgets, models, services)
- Proper state management
- Ready for Firebase integration

## Project Structure

```
lib/
├── main.dart              # App entry point
├── app.dart               # Material app configuration
├── screens/               # UI screens
│   ├── home_screen.dart
│   ├── rider_tab.dart
│   └── driver_tab.dart
├── widgets/               # Reusable widgets
│   └── ride_card.dart
├── models/                # Data models
│   ├── ride.dart
│   └── driver.dart
└── services/              # Business logic
    ├── auth_service.dart
    ├── ride_service.dart
    └── dispatch_service.dart
```

## Getting Started

### Prerequisites
- Flutter SDK 3.0+
- Dart 3.0+

### Installation

1. Clone the repository:
```bash
git clone https://github.com/tandibrad-create/Bradley10.git
cd Bradley10
```

2. Get dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Next Steps

- [ ] Integrate Firebase Firestore for real-time ride data
- [ ] Add user authentication (Firebase Auth)
- [ ] Implement maps and GPS tracking (Google Maps)
- [ ] Add payment integration
- [ ] Create unit and widget tests
- [ ] Set up CI/CD with GitHub Actions

## Code Quality

The codebase follows Flutter/Dart best practices:
- ✅ Proper use of const constructors
- ✅ Clear naming conventions
- ✅ Null safety enabled
- ✅ Material Design 3 compliance
- ✅ Models with serialization (toJson/fromJson)

## License

MIT License - feel free to use this for learning and development.

## Author

**Bradley** - tandibrad-create
