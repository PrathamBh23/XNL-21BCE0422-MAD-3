# XNL-21BCE0422-MAD-3
# Mobile App CI/CD Pipeline

This repository contains the source code for a mobile application, along with the setup for an automated CI/CD pipeline.

## Setup

1. Clone the repository.
2. Install dependencies using `npm install` or your package manager of choice.
3. Set up your Firebase or cloud deployment credentials as environment variables.

## CI/CD Pipeline

The CI/CD pipeline is defined in `.github/workflows/ci-cd.yml`.

- **Build**: Installs dependencies and builds the app (APK/IPA).
- **Test**: Runs unit and UI tests.
- **Deploy**: Deploys the app to Firebase (or another distribution service).

## Deployment

The app is deployed to Firebase Hosting. You can adjust the deployment section for other platforms like Google Play or TestFlight.

## Rollback

If a deployment fails, use the `scripts/rollback.sh` to revert to the last stable version.

## Monitoring

We integrate Prometheus for custom metrics and Grafana for visualization. Alerts are configured for any failures in the deployment process.
