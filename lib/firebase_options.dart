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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBTYNAeZNYZzWYvSu5cjJWhfTtNeCTTDYw',
    appId: '1:72687659403:web:ccd72ec7a41c4ce8c9e78e',
    messagingSenderId: '72687659403',
    projectId: 'allstar-17cdf',
    authDomain: 'allstar-17cdf.firebaseapp.com',
    storageBucket: 'allstar-17cdf.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDdb71Xa7vV5s6m3ektNoos1504tA9rYM',
    appId: '1:72687659403:android:4c903f2da5d01f76c9e78e',
    messagingSenderId: '72687659403',
    projectId: 'allstar-17cdf',
    storageBucket: 'allstar-17cdf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_5obj2FnIo-jx3_-VQL4WOFq_GCnVQ9I',
    appId: '1:72687659403:ios:47e3e1295e381494c9e78e',
    messagingSenderId: '72687659403',
    projectId: 'allstar-17cdf',
    storageBucket: 'allstar-17cdf.appspot.com',
    iosBundleId: 'com.flutterlads.allStar',
  );
}
