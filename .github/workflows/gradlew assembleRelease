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
      
      - name: Set up JDK
        uses: actions/setup-java@v2
        with:
          java-version: '11' # Adjust as needed

      - name: Set up Gradle wrapper
        uses: gradle/wrapper-validation-action@v1

      - name: Build Android Release
        run: |
          chmod +x gradlew
          ./gradlew assembleRelease
