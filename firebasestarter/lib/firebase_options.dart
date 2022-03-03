// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCiKPhZ6c2aGaAIC5mSiE8-To7Qzz6q638',
    appId: '1:131218356885:web:f1ef6708892a2dad6fb99c',
    messagingSenderId: '131218356885',
    projectId: 'csc234-firebase-test',
    authDomain: 'csc234-firebase-test.firebaseapp.com',
    storageBucket: 'csc234-firebase-test.appspot.com',
    measurementId: 'G-BJ34RY7QYF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAx6LPegYfwYAj2xBaVYZCVMfdlhxMLTak',
    appId: '1:131218356885:android:7f75bbb2f62afdf86fb99c',
    messagingSenderId: '131218356885',
    projectId: 'csc234-firebase-test',
    storageBucket: 'csc234-firebase-test.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAc7wmZR6JWwvwjhVKMo2lcgFlg0WKm6_4',
    appId: '1:131218356885:ios:779a4a9947dbb1c46fb99c',
    messagingSenderId: '131218356885',
    projectId: 'csc234-firebase-test',
    storageBucket: 'csc234-firebase-test.appspot.com',
    iosClientId: '131218356885-9dj8vmp4qevlhtt3fa0uachtphra4ibq.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}
