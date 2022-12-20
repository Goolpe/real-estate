A real estate app with Flutter (iOS and Android) based on the Funda API

## The App contains the following:

- Photos <br>
- Details <br>
- Description <br>
- Location <br>
- Unit and widget tests <br>

# How to Start

<ul>
  <li>Check that flutter version is 3.3 or above</li>
  <li>Create file key.dart in lib/core/api/ and past this code</li>
  <code>class Key {static const instance = "YOUR API KEY HERE";}</code>
  <li>Set the google map's key in file
    <ul>
      <li>For iOS -> ios/Runner/AppDelegate.swift</li>
      <code>GMSServices.provideAPIKey("YOUR KEY HERE")</code>
      <li>For Android -> android/app/src/main/AndroidManifest.xml</li>
      <code>meta-data android:name="com.google.android.geo.API_KEY"
            android:value="YOUR KEY HERE"/</code>
    </ul>
  </li>
  <li>flutter run</li>
</ul>

## Known issues

- (Probably) Impossible to call from iOS Simulator :(

# Tested on
- iOS Simulator 14 Pro Max
- Android Simulator Pixel 5

# Screens
<img src="https://raw.githubusercontent.com/Goolpe/real-estate/master/assets/screenshots/ios01.png" width="150" /> |
<img src="https://raw.githubusercontent.com/Goolpe/real-estate/master/assets/screenshots/ios02.png" width="150" /> 