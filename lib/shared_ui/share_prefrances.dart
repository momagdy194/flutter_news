import 'package:shared_preferences/shared_preferences.dart';

Future<bool> isLogIn() async {
  SharedPreferences sheredPreferences = await SharedPreferences.getInstance();
  bool isLoggedIn = sheredPreferences.getBool('isLoggedIn');

  if (isLoggedIn == null || isLoggedIn == false) {
    return false;
  }
  return true;
}
