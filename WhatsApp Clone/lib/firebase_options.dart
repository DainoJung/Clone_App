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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB4dSnIT9dtops1p4VvTvmRm9ZZ4OafISc',
    appId: '1:323677958273:android:8c1d990f0eefc220cd1d80',
    messagingSenderId: '323677958273',
    projectId: 'whatapp-messenger',
    storageBucket: 'whatapp-messenger.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjieAjwuvYf9DZfTBPzqpBeajZq0VHyIk',
    appId: '1:323677958273:ios:b5310250e5195be2cd1d80',
    messagingSenderId: '323677958273',
    projectId: 'whatapp-messenger',
    storageBucket: 'whatapp-messenger.appspot.com',
    iosClientId: '323677958273-7r3tbp5ivsjtcqkp8bnd20vombaau9pa.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterCompleteGuide',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjieAjwuvYf9DZfTBPzqpBeajZq0VHyIk',
    appId: '1:323677958273:ios:b5310250e5195be2cd1d80',
    messagingSenderId: '323677958273',
    projectId: 'whatapp-messenger',
    storageBucket: 'whatapp-messenger.appspot.com',
    iosClientId: '323677958273-7r3tbp5ivsjtcqkp8bnd20vombaau9pa.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterCompleteGuide',
  );
}