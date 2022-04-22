import 'package:flutter/material.dart';
import 'package:healthify/utils/app_resources.dart';
import 'package:healthify/utils/app_input_decoration.dart';
import 'package:healthify/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();

  bool _startLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppResources.primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: AppResources.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Text(
              AppResources.appName,
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            Text("Welcome Back!",
                style: TextStyle(
                  fontSize: 32,
                )),
            SizedBox(
              height: 64,
            ),
            TextField(
              controller: _emailTextEditingController,
              decoration: AppInputDecoration().boxDecoration("Email"),
            ),
            SizedBox(
              height: 32,
            ),
            TextField(
              controller: _passwordTextEditingController,
              decoration: AppInputDecoration().boxDecoration("Password"),
            ),
            _startLoading ? CircularProgressIndicator() : Container(),
            SizedBox(
              height: 32,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: _startLoading ? Colors.grey : Colors.white,
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextButton(
                    onPressed: () {
                      handleLoginInput();
                    },
                    child: Text("Login")),
              ),
            )
          ],
        ),
      ),
    );
  }

  void handleLoginInput() {
    String email = _emailTextEditingController.text.trim();
    String password = _passwordTextEditingController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    setState(() {
      _startLoading = true;
    });

    Navigator.pushAndRemoveUntil<dynamic>(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const HomePage(),
      ),
      (route) => false,
    );
  }
}
