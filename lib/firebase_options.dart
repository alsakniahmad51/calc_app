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
    apiKey: 'AIzaSyBiPHVc6hKttfu3DhMx_99kWbIbbRxi40I',
    appId: '1:819323324841:web:1f939ce6088a832ec4dcb8',
    messagingSenderId: '819323324841',
    projectId: 'calculation-a8532',
    authDomain: 'calculation-a8532.firebaseapp.com',
    storageBucket: 'calculation-a8532.appspot.com',
    measurementId: 'G-7JKC212DBZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAB5jmC2gimCxRe2n4fvAgEHEIPNOUoI0',
    appId: '1:819323324841:android:c86f9b04d72e628dc4dcb8',
    messagingSenderId: '819323324841',
    projectId: 'calculation-a8532',
    storageBucket: 'calculation-a8532.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgGhl4rUZvaYuejxUlzAp0st5DiAsOV5A',
    appId: '1:819323324841:ios:6870d0c1bf40a5f6c4dcb8',
    messagingSenderId: '819323324841',
    projectId: 'calculation-a8532',
    storageBucket: 'calculation-a8532.appspot.com',
    iosBundleId: 'com.example.calculation',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDgGhl4rUZvaYuejxUlzAp0st5DiAsOV5A',
    appId: '1:819323324841:ios:6870d0c1bf40a5f6c4dcb8',
    messagingSenderId: '819323324841',
    projectId: 'calculation-a8532',
    storageBucket: 'calculation-a8532.appspot.com',
    iosBundleId: 'com.example.calculation',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBiPHVc6hKttfu3DhMx_99kWbIbbRxi40I',
    appId: '1:819323324841:web:4e321258ca79c632c4dcb8',
    messagingSenderId: '819323324841',
    projectId: 'calculation-a8532',
    authDomain: 'calculation-a8532.firebaseapp.com',
    storageBucket: 'calculation-a8532.appspot.com',
    measurementId: 'G-D78RG75RQD',
  );
}
