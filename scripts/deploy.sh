#!/bin/bash

echo "Starting Deployment to Cloud..."

# Build APK for Android
./gradlew assembleRelease  # Android build command (Gradle)
if [ $? -ne 0 ]; then
  echo "Android Build Failed"
  exit 1
fi

# Build IPA for iOS
xcodebuild -workspace ios/YourApp.xcworkspace -scheme YourApp -archivePath ios/build/YourApp.xcarchive archive  # iOS build command (Xcode)
if [ $? -ne 0 ]; then
  echo "iOS Build Failed"
  exit 1
fi

# Deploy the app to Firebase (or another service like Google Play, TestFlight, etc.)
firebase deploy --only hosting  # Replace with your actual deployment service
if [ $? -ne 0 ]; then
  echo "Deployment Failed"
  exit 1
fi

echo "Deployment Successful!"
