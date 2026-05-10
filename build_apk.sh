#!/bin/bash

# ZimRideGuru APK Build Script
# Run this script to automatically build the APK

echo "🚀 Starting ZimRideGuru APK Build..."
echo ""

# Step 1: Clean
echo "🧹 Cleaning previous builds..."
flutter clean
rm -rf build/

# Step 2: Get dependencies
echo "📦 Getting dependencies..."
flutter pub get

# Step 3: Build APK
echo "🔨 Building APK (this may take 2-5 minutes)..."
flutter build apk --release

# Step 4: Check if successful
if [ -f "build/app/outputs/flutter-apk/app-release.apk" ]; then
    echo ""
    echo "✅ APK BUILD SUCCESSFUL!"
    echo ""
    echo "📱 Your APK file is ready at:"
    echo "build/app/outputs/flutter-apk/app-release.apk"
    echo ""
    echo "📥 To install on your phone:"
    echo "flutter install"
    echo ""
else
    echo "❌ APK build failed. Check the output above for errors."
    exit 1
fi
