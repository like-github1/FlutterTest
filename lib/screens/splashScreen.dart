import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_ui_test/screens/HomeScreen.dart';
import 'package:simple_ui_test/screens/loginScreens.dart';

import '../Controller/loginController.dart';

AuthController controller = AuthController();

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loginControl();
  }

  // ignore: missing_return
  Future<bool> loginControl() async {
    bool status = await controller.isLoginUser();

    if (status) {
      Get.to(() => const HomeScreen());
    } else {
      Get.to(() => LoginPage());
    }
    return status;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage(('assets/images/logo.png'))),
      ),
    );
  }
}
