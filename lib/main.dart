import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_register_screen/screens/onboarding_screen.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      theme: ThemeData(
        // appBarTheme: const AppBarTheme(
        //   elevation: 0,
        //   systemOverlayStyle: SystemUiOverlayStyle(
        //     statusBarIconBrightness: Brightness.dark,
        //     statusBarColor: Colors.white,
        //   ),
        // ),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
