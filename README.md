# Nasheed Alarm App (Skeleton)

This is the skeleton project for the "Nasheed & Adhkar Alarm" application.

## ⚠️ Important Setup Instructions

Since this project was created manually (due to missing Flutter CLI access), you **MUST** run the following command to generate the platform-specific build files (Android/iOS) before running the app:

1.  Open your terminal in this directory.
2.  Run:
    ```bash
    flutter create .
    ```
    *This will generate `android/build.gradle`, `ios/`, `web/`, etc.*

3.  **Check `android/app/src/main/AndroidManifest.xml`**:
    - If `flutter create` overwrote the file, please revert it or manually add the permissions back from the `AndroidManifest_backup.xml` (if you made one) or refer to the `implementation_plan.md`.
    - **Crucial Permissions included in this skeleton**:
      - `SCHEDULE_EXACT_ALARM`
      - `WAKE_LOCK`
      - `FOREGROUND_SERVICE`
      - `RECEIVE_BOOT_COMPLETED`

## Project Structure

-   `lib/main.dart`: Entry point.
-   `lib/services/`:
    -   `alarm_service.dart`: Handles AndroidAlarmManager.
    -   `notification_service.dart`: Handles Local Notifications.
    -   `database_service.dart`: SQLite database for Alarms/Reminders.
    -   `background_service.dart`: Workmanager for background tasks.
    -   `api_service.dart`: Placeholder for future Backend integration.
-   `lib/screens/`:
    -   `home_screen.dart`: Main navigation.
    -   `alarms_page.dart`: List of alarms.
    -   `reminders_page.dart`: List of reminders.
    -   `settings_page.dart`: Settings.

## Dependencies

-   `flutter_local_notifications`
-   `android_alarm_manager_plus`
-   `workmanager`
-   `sqflite`
-   `provider`
-   `just_audio`

## Next Steps

1.  Run `flutter pub get`.
2.  Run `flutter run` on an Android device/emulator.
