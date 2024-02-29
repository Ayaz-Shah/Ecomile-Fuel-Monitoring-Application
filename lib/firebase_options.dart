// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBWvoSJtdtngJS3NeccN8nTz-AUxROWDCE',
    appId: '1:1036482615560:web:c12b5c221d9bdef826b4bd',
    messagingSenderId: '1036482615560',
    projectId: 'ecomile-monitor',
    authDomain: 'ecomile-monitor.firebaseapp.com',
    databaseURL: 'https://ecomile-monitor-default-rtdb.firebaseio.com',
    storageBucket: 'ecomile-monitor.appspot.com',
    measurementId: 'G-HD759WE0LJ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcvjN-oEaUEoGscoGbgeZ6dO0fEzm0EVk',
    appId: '1:1036482615560:android:46d9e7bd835cf77b26b4bd',
    messagingSenderId: '1036482615560',
    projectId: 'ecomile-monitor',
    databaseURL: 'https://ecomile-monitor-default-rtdb.firebaseio.com',
    storageBucket: 'ecomile-monitor.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBW9yTZQ8S9R1KPUj7jJNcZ57094HzkjUM',
    appId: '1:1036482615560:ios:0ad56e62a68043c326b4bd',
    messagingSenderId: '1036482615560',
    projectId: 'ecomile-monitor',
    databaseURL: 'https://ecomile-monitor-default-rtdb.firebaseio.com',
    storageBucket: 'ecomile-monitor.appspot.com',
    iosBundleId: 'com.example.ecomileMonitor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBW9yTZQ8S9R1KPUj7jJNcZ57094HzkjUM',
    appId: '1:1036482615560:ios:56153d4aa531aba626b4bd',
    messagingSenderId: '1036482615560',
    projectId: 'ecomile-monitor',
    databaseURL: 'https://ecomile-monitor-default-rtdb.firebaseio.com',
    storageBucket: 'ecomile-monitor.appspot.com',
    iosBundleId: 'com.example.ecomileMonitor.RunnerTests',
  );
}
