import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:udemy_app/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Udemy App',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: SplashScreen());
  }
}
