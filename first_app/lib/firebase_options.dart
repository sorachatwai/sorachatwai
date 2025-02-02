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
    apiKey: 'AIzaSyCrtBnbkc4CLxT49bf-DTjtKIHPmPPwVpc',
    appId: '1:796626000585:web:673b25e941218ad94f4b18',
    messagingSenderId: '796626000585',
    projectId: 'is381-2024-wai',
    authDomain: 'is381-2024-wai.firebaseapp.com',
    storageBucket: 'is381-2024-wai.firebasestorage.app',
    measurementId: 'G-9BTBWQYZTN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDFry0qMiWU8ERUBJ5UzZ9n1EHeWGTvENU',
    appId: '1:796626000585:android:b9c15dac4dceea994f4b18',
    messagingSenderId: '796626000585',
    projectId: 'is381-2024-wai',
    storageBucket: 'is381-2024-wai.firebasestorage.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAoDhGEY5wMunk6Pc2UyBCaBaFQ5Mnj9ts',
    appId: '1:796626000585:ios:9bc67402515199594f4b18',
    messagingSenderId: '796626000585',
    projectId: 'is381-2024-wai',
    storageBucket: 'is381-2024-wai.firebasestorage.app',
    iosBundleId: 'com.example.firstApp',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAoDhGEY5wMunk6Pc2UyBCaBaFQ5Mnj9ts',
    appId: '1:796626000585:ios:9bc67402515199594f4b18',
    messagingSenderId: '796626000585',
    projectId: 'is381-2024-wai',
    storageBucket: 'is381-2024-wai.firebasestorage.app',
    iosBundleId: 'com.example.firstApp',
  );

}