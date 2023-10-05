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
    apiKey: 'AIzaSyBbIAhjkSx3b_ZsXiT8NtlVfeCbc-KXVCk',
    appId: '1:956906864296:web:d1431005fd3d5b24aacc9d',
    messagingSenderId: '956906864296',
    projectId: 'smit-login-signup',
    authDomain: 'smit-login-signup.firebaseapp.com',
    storageBucket: 'smit-login-signup.appspot.com',
    measurementId: 'G-G7PZ62P7L8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBSIa162RjMBqHZ1MrM9n8ris2H4u9zYbI',
    appId: '1:956906864296:android:db9f4886ac00e814aacc9d',
    messagingSenderId: '956906864296',
    projectId: 'smit-login-signup',
    storageBucket: 'smit-login-signup.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACoYUsTN4RkyRzylEAOEG4C1pKg1MBSWc',
    appId: '1:956906864296:ios:b9d1c240171f0508aacc9d',
    messagingSenderId: '956906864296',
    projectId: 'smit-login-signup',
    storageBucket: 'smit-login-signup.appspot.com',
    iosBundleId: 'com.example.flutterassignment',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyACoYUsTN4RkyRzylEAOEG4C1pKg1MBSWc',
    appId: '1:956906864296:ios:2aa74db7fa6e00c0aacc9d',
    messagingSenderId: '956906864296',
    projectId: 'smit-login-signup',
    storageBucket: 'smit-login-signup.appspot.com',
    iosBundleId: 'com.example.flutterassignment.RunnerTests',
  );
}
