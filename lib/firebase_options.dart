// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyD0Yp-vl9mAVL_tZ676_vHptzNuY837iO8',
    appId: '1:131664400115:web:abf10b4191e44ff6d53186',
    messagingSenderId: '131664400115',
    projectId: 'chat-app-1914f',
    authDomain: 'chat-app-1914f.firebaseapp.com',
    storageBucket: 'chat-app-1914f.appspot.com',
    measurementId: 'G-VQGTQQVTFZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAhQ_CcMLCpf3o90IgJBARz3Hq35JipMyk',
    appId: '1:131664400115:android:51475f9efa61c689d53186',
    messagingSenderId: '131664400115',
    projectId: 'chat-app-1914f',
    storageBucket: 'chat-app-1914f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdWwjnpDV1Bt_N-5YlZTgl1_4lmA3cHYs',
    appId: '1:131664400115:ios:8f41344711f4269dd53186',
    messagingSenderId: '131664400115',
    projectId: 'chat-app-1914f',
    storageBucket: 'chat-app-1914f.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdWwjnpDV1Bt_N-5YlZTgl1_4lmA3cHYs',
    appId: '1:131664400115:ios:8f41344711f4269dd53186',
    messagingSenderId: '131664400115',
    projectId: 'chat-app-1914f',
    storageBucket: 'chat-app-1914f.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD0Yp-vl9mAVL_tZ676_vHptzNuY837iO8',
    appId: '1:131664400115:web:a158badfbd2176fed53186',
    messagingSenderId: '131664400115',
    projectId: 'chat-app-1914f',
    authDomain: 'chat-app-1914f.firebaseapp.com',
    storageBucket: 'chat-app-1914f.appspot.com',
    measurementId: 'G-7ZXKGHW9NQ',
  );
}
