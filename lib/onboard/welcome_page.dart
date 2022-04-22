import 'package:flutter/material.dart';
import 'package:healthify/home_page.dart';
import 'package:healthify/onboard/loginpage.dart';
import 'package:healthify/onboard/signuppage.dart';
import 'package:healthify/utils/app_resources.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppResources.primaryColor,
      ),
      body: Container(
        color: AppResources.primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  // color: Colors.red,
                  ),
            ),
            Container(
              padding: const EdgeInsets.all(32.0),
              height: 400,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(children: [
                const Text(
                  "Healthify.",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Start counting the calories and get healthier with our help.",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      color: AppResources.primaryColor,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(22))),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 32, bottom: 16),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  // color: Colors.black,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppResources.primaryColor,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(22))),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: AppResources.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
