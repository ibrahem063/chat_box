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
    apiKey: 'AIzaSyAOp1EZM5mAUWY70Z5VUQajgdjRVb1d5uI',
    appId: '1:319387197645:web:7b1d91c2f610aa3463c984',
    messagingSenderId: '319387197645',
    projectId: 'chat-box-982b6',
    authDomain: 'chat-box-982b6.firebaseapp.com',
    storageBucket: 'chat-box-982b6.appspot.com',
    measurementId: 'G-PPNXT6QJ4C',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCMh-MkB-GY3nHndGWmivFGgseYxBtqk88',
    appId: '1:319387197645:android:33bfca56151a410863c984',
    messagingSenderId: '319387197645',
    projectId: 'chat-box-982b6',
    storageBucket: 'chat-box-982b6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD8Dxx0uHnMpq9Lgy0nesZmqZxJIV9TP5g',
    appId: '1:319387197645:ios:c2cd899a1d5e443963c984',
    messagingSenderId: '319387197645',
    projectId: 'chat-box-982b6',
    storageBucket: 'chat-box-982b6.appspot.com',
    iosBundleId: 'com.example.chatBox',
  );
}
