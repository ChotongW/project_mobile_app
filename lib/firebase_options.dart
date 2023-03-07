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
    apiKey: 'AIzaSyBkyPjtK6u_qNFFPoZk2nPknkPoQif2sew',
    appId: '1:145868170516:web:93d130a85f889776ddce01',
    messagingSenderId: '145868170516',
    projectId: 'jiwjiw-34092',
    authDomain: 'jiwjiw-34092.firebaseapp.com',
    databaseURL: 'https://jiwjiw-34092-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jiwjiw-34092.appspot.com',
    measurementId: 'G-VYBG5D3QRW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-VaLr-QKjErcrNAAFuP5GoOy0-JHVEIk',
    appId: '1:145868170516:android:0013e8dc1fa3252cddce01',
    messagingSenderId: '145868170516',
    projectId: 'jiwjiw-34092',
    databaseURL: 'https://jiwjiw-34092-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jiwjiw-34092.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAkkRpLG32JhZ1fhqLpgU8Zyi6_eM1esWI',
    appId: '1:145868170516:ios:ed842875b4de4f75ddce01',
    messagingSenderId: '145868170516',
    projectId: 'jiwjiw-34092',
    databaseURL: 'https://jiwjiw-34092-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jiwjiw-34092.appspot.com',
    iosClientId: '145868170516-9hq1pupe4b19hhu0vh1ce15hqt5v0kr5.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectMobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAkkRpLG32JhZ1fhqLpgU8Zyi6_eM1esWI',
    appId: '1:145868170516:ios:ed842875b4de4f75ddce01',
    messagingSenderId: '145868170516',
    projectId: 'jiwjiw-34092',
    databaseURL: 'https://jiwjiw-34092-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'jiwjiw-34092.appspot.com',
    iosClientId: '145868170516-9hq1pupe4b19hhu0vh1ce15hqt5v0kr5.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectMobileApp',
  );
}
