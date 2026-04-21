import 'package:flutter/material.dart';
import 'package:sign_up_app/login.dart';
import 'package:sign_up_app/sign_up.dart';
import 'package:sign_up_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: SplashScreen.id,
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        Login.id: (context) => Login(),
        SignUp.id: (context) => SignUp(),
      },
    );
  }
}
