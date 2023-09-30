import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/HomeScreen.dart';

class AuthController {
  // This function helps determine whether a user has logged in before or not.
  Future<bool> isLoginUser() async {
    String? token = await getLoginToken();
    if (token == null) {
      return false;
    } else {
      return true;
    }
  }

// This function helps us save the user's login token to shared preferences,
//allowing us to log in the user later without requiring them to enter their
//username and password again.

  Future<void> saveLoginToken(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('login_token', token);
  }

//function  to get login token
  Future<String?> getLoginToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('login_token');
  }
  // This function helps the user to log in.
  Future<void> _login(String username, password) async {
    // Perform login API call and get the login token
    String loginToken = await _performLogin(username, password);
    // Save the login token
    await saveLoginToken(loginToken);
    // Navigate to the home screen or perform any other actions
    Get.to(() => const HomeScreen());
  }

  // Example function to perform login API call to actually login our user
  Future<String> _performLogin(String username, String password) async {
    // Replace this with your own login API call implementation
    await Future.delayed(Duration(seconds: 2));
    return 'example_login_token';
  }
}
