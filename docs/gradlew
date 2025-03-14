name: Build Android App

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
      - name: Check out repository
        uses: actions/checkout@v2
        
      - name: Set up JDK 11
        uses: actions/setup-java@v2
        with:
          java-version: '11' # Adjust according to your project’s requirements

      - name: Make Gradle wrapper executable
        run: chmod +x gradlew

      - name: Build Android Release
        run: ./gradlew assembleRelease
