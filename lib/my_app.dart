import 'package:flutter/material.dart';
import 'package:healthify/home_page.dart';
import 'package:healthify/onboard/loginpage.dart';
import 'package:healthify/onboard/welcome_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}
