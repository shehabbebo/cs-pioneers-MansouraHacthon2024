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
    apiKey: 'AIzaSyC92kvhF5ls-t5UeB6W9cc9DZA78okFPW4',
    appId: '1:434559375560:web:59dcb324af851bb3dfadfd',
    messagingSenderId: '434559375560',
    projectId: 'final-project-3db19',
    authDomain: 'final-project-3db19.firebaseapp.com',
    storageBucket: 'final-project-3db19.appspot.com',
    measurementId: 'G-MCVKVYTYKS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDrwQtn2EcvTOwYHjAn5Y2cQWQjsftNGBA',
    appId: '1:434559375560:android:c970698db2df7b77dfadfd',
    messagingSenderId: '434559375560',
    projectId: 'final-project-3db19',
    storageBucket: 'final-project-3db19.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDdOTnVyAXo5GDAqUEXVG7XZhcMSAOaX9g',
    appId: '1:434559375560:ios:b9bb2479390e18c4dfadfd',
    messagingSenderId: '434559375560',
    projectId: 'final-project-3db19',
    storageBucket: 'final-project-3db19.appspot.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDdOTnVyAXo5GDAqUEXVG7XZhcMSAOaX9g',
    appId: '1:434559375560:ios:b9bb2479390e18c4dfadfd',
    messagingSenderId: '434559375560',
    projectId: 'final-project-3db19',
    storageBucket: 'final-project-3db19.appspot.com',
    iosBundleId: 'com.example.finalProject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyC92kvhF5ls-t5UeB6W9cc9DZA78okFPW4',
    appId: '1:434559375560:web:f39a4e1d1c24886fdfadfd',
    messagingSenderId: '434559375560',
    projectId: 'final-project-3db19',
    authDomain: 'final-project-3db19.firebaseapp.com',
    storageBucket: 'final-project-3db19.appspot.com',
    measurementId: 'G-W159WDY007',
  );
}
