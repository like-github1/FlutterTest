import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_ui_test/screens/loginScreens.dart';
import 'package:simple_ui_test/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () => Get.to(() => LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SimpleUI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
