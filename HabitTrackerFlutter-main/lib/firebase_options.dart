// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

// / Default [FirebaseOptions] for use with your Firebase apps.
// /
// / Example:
// / ```dart
// / import 'firebase_options.dart';
// / // ...
// / await Firebase.initializeApp(
// /   options: DefaultFirebaseOptions.currentPlatform,
// / );
// / ```
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
    apiKey: 'AIzaSyAL7aYlluDX-9a9LVQbX_iboQ8XR1YI3UA',
    appId: '1:886423837232:web:b7fe487c711855bfa02bf5',
    messagingSenderId: '886423837232',
    projectId: 'mhapp-54152',
    authDomain: 'mhapp-54152.firebaseapp.com',
    storageBucket: 'mhapp-54152.appspot.com',
    measurementId: 'G-PESQRB4GG5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkfAPd9xk3G-hgZ4mBKVVivFIGmluk7K8',
    appId: '1:886423837232:android:22b0419f991998fea02bf5',
    messagingSenderId: '886423837232',
    projectId: 'mhapp-54152',
    storageBucket: 'mhapp-54152.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC2IpHD_sBdSk1qidbfEDyJmL2bNqTJ-eQ',
    appId: '1:886423837232:ios:e059ac35e9ca677aa02bf5',
    messagingSenderId: '886423837232',
    projectId: 'mhapp-54152',
    storageBucket: 'mhapp-54152.appspot.com',
    iosClientId:
        '886423837232-9e35dn1vmn1cpfk92vkelk2or9l3sqn2.apps.googleusercontent.com',
    iosBundleId: 'com.example.habittrackertute',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC2IpHD_sBdSk1qidbfEDyJmL2bNqTJ-eQ',
    appId: '1:886423837232:ios:e059ac35e9ca677aa02bf5',
    messagingSenderId: '886423837232',
    projectId: 'mhapp-54152',
    storageBucket: 'mhapp-54152.appspot.com',
    iosClientId:
        '886423837232-9e35dn1vmn1cpfk92vkelk2or9l3sqn2.apps.googleusercontent.com',
    iosBundleId: 'com.example.habittrackertute',
  );
}
