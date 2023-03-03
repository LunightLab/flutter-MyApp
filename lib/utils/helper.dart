import 'package:myapp/utils/shared_pref_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Helper {
  static Future<void> initLibrary() async {
    await Future.wait(
      [
        // SharedPrefManager
        _sharedPrefManager(),

        // Firebase
        // initFirebaseLibrary(),
        //
      ],
    );

    // Log.debug(Constants.of().packageName, title: Constants.of().env);
  }

  static Future<void> _sharedPrefManager() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    SharedPrefManager(sharedPreferences: pref);
  }

  // static Future<void> initFirebaseLibrary() async {
  //   /// Firebase
  //   await Firebase.initializeApp();

  //   /// Crashlytics
  //   await FirebaseCrashlytics.instance
  //       .setCrashlyticsCollectionEnabled(!kDebugMode);

  //   Function originalOnError = FlutterError.onError!;
  //   FlutterError.onError = (errorDetails) async {
  //     await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
  //     originalOnError(errorDetails);
  //   };
  // }
}
