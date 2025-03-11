import 'package:nowa_runtime/nowa_runtime.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';

@NowaGenerated()
class DefaultFirebaseOptions {
  static FirebaseOptions web = const FirebaseOptions(
    apiKey: 'AIzaSyBpg1owsQDFCPJbiO8iadVATjcjQy86FCk',
    appId: '1:642927982494:web:553fb6b5d830b82aca088f',
    messagingSenderId: '642927982494',
    projectId: 'kappelinranta-app',
    authDomain: 'kappelinranta-app.firebaseapp.com',
    storageBucket: 'kappelinranta-app.firebasestorage.app',
  );

  static FirebaseOptions ios = const FirebaseOptions(
    apiKey: 'AIzaSyAjSiovn_srxOHP7MBepGeYBlmKw6x6siw',
    appId: '1:642927982494:ios:a90701b9a5d7730eca088f',
    messagingSenderId: '642927982494',
    projectId: 'kappelinranta-app',
    storageBucket: 'kappelinranta-app.firebasestorage.app',
    androidClientId: '',
    iosBundleId: 'com.example.kappelinranta',
  );

  static FirebaseOptions android = const FirebaseOptions(
    apiKey: 'AIzaSyB-5-oXJVUGIaveMpq0fZ4lUNJn2atdZi4',
    appId: '1:642927982494:android:9fc10dd48699ee20ca088f',
    messagingSenderId: '642927982494',
    projectId: 'kappelinranta-app',
    storageBucket: 'kappelinranta-app.firebasestorage.app',
  );

  static FirebaseOptions? get currentPlatform {
    if (NPlatform.isWeb) {
      return web;
    } else {
      if (NPlatform.isAndroid) {
        return android;
      }
    }
    if (NPlatform.isIOS || NPlatform.isMacOs) {
      return ios;
    }
    return null;
  }
}
