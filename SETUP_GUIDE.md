# 🚀 ZimRideGuru Setup Guide

## Prerequisites

Ensure you have the following installed:

### 1. **Flutter SDK**
```bash
# Check if Flutter is installed
flutter --version

# If not, download from: https://flutter.dev/docs/get-started/install
```

### 2. **Doctor Check** (Verify Installation)
```bash
flutter doctor
```

You should see ✓ for:
- Flutter SDK
- Android toolchain (or Xcode for iOS)
- Connected device or emulator

---

## 📋 Installation Steps

### Step 1: Clone the Repository
```bash
git clone https://github.com/tandibrad-create/Bradley10.git
cd Bradley10
```

### Step 2: Clean Previous Builds (Important!)
```bash
flutter clean
rm -rf pubspec.lock
rm -rf .dart_tool
```

### Step 3: Get Dependencies
```bash
flutter pub get
```

**Expected output:**
```
Running "flutter pub get" in Bradley10...
Resolving dependencies...
Got dependencies!
```

### Step 4: Verify the Project
```bash
flutter analyze
```

Should show **0 issues** or only warnings.

---

## 🎮 Running the App

### Check Available Devices
```bash
flutter devices
```

### Option A: Run on Android Emulator
```bash
# Start emulator
flutter emulators --launch Pixel_5_API_30

# Or list available emulators
flutter emulators

# Run app
flutter run
```

### Option B: Run on iOS Simulator (macOS only)
```bash
open -a Simulator
flutter run
```

### Option C: Run on Physical Device
```bash
# Connect device via USB with USB Debugging enabled
flutter devices
flutter run -d <device-id>
```

### Option D: Run with Verbose Output (for debugging)
```bash
flutter run -v
```

---

## 🐛 Common Errors & Fixes

### Error 1: "No connected devices found"
```bash
# Solution: Start an emulator
flutter emulators --launch Pixel_5_API_30

# Or check connected devices
adb devices
```

### Error 2: "Android toolchain not found"
```bash
# Solution: Run doctor to see what's missing
flutter doctor

# Then install missing components
# For Android: Download Android SDK, set ANDROID_HOME
# https://flutter.dev/docs/get-started/install/windows
```

### Error 3: "Xcode not found" (macOS)
```bash
# Solution: Install Xcode Command Line Tools
xcode-select --install

# Or update Xcode
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
```

### Error 4: "Gradle build failed"
```bash
# Solution: Clean and rebuild
flutter clean
cd android && ./gradlew clean && cd ..
flutter pub get
flutter run
```

### Error 5: "Pub get failed"
```bash
# Solution: Update Flutter and pub cache
flutter upgrade
flutter pub cache repair
flutter pub get
```

### Error 6: "Permissions error on iOS"
```bash
# Solution: Accept iOS licenses
flutter doctor --android-licenses
```

---

## ✅ Verification Checklist

- [ ] Flutter SDK installed and in PATH
- [ ] Device/emulator connected
- [ ] `flutter pub get` completed without errors
- [ ] `flutter analyze` shows 0 critical issues
- [ ] App launches without crashes
- [ ] Rider tab displays available rides
- [ ] Driver tab shows go online/offline button
- [ ] Bottom navigation switches between tabs

---

## 🔧 Build Commands

### Debug Build (Development)
```bash
flutter run
```

### Release Build (Production - Android)
```bash
flutter build apk --release
```

Output: `build/app/outputs/flutter-apk/app-release.apk`

### Release Build (Production - iOS)
```bash
flutter build ios --release
```

---

## 📊 Project Structure

```
lib/
├── main.dart              # App entry point
├── app.dart               # Material app config
├── screens/
│   ├── home_screen.dart
│   ├── rider_tab.dart
│   └── driver_tab.dart
├── widgets/
│   └── ride_card.dart
├── models/
│   ├── ride.dart
│   └── driver.dart
└── services/
    ├── auth_service.dart
    ├── ride_service.dart
    └── dispatch_service.dart
```

---

## 🚨 Troubleshooting

### Get Full Error Details
```bash
flutter run -v
```

### Reset Everything
```bash
flutter clean
rm -rf pubspec.lock
rm -rf .dart_tool
rm -rf build/
rm -rf ios/Pods ios/Podfile.lock
rm -rf android/.gradle
flutter pub get
flutter run
```

### Check Firebase Connectivity (if added later)
```bash
flutter run -v 2>&1 | grep -i firebase
```

---

## 📚 Useful Resources

- **Flutter Docs**: https://flutter.dev/docs
- **Dart Docs**: https://dart.dev/guides
- **Pub.dev Packages**: https://pub.dev
- **GitHub Issues**: https://github.com/flutter/flutter/issues

---

## 🆘 Need Help?

If you're still stuck:

1. **Share the full error output** (use `flutter run -v`)
2. **Run `flutter doctor`** and share the output
3. **Check your Flutter/Dart versions** match requirements in `pubspec.yaml`
4. **Search GitHub issues** for similar problems

---

**Happy coding! 🎉**
