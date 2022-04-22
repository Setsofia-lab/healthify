import 'package:flutter/material.dart';
import 'package:healthify/utils/app_resources.dart';
import 'package:healthify/utils/app_input_decoration.dart';
import 'package:healthify/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _firstNameTextEditingController =
      TextEditingController();
  TextEditingController _lastNameTextEditingController =
      TextEditingController();
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();

  bool _startLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppResources.primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppResources.primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        color: AppResources.primaryColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                AppResources.appName,
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              Text("Sign Up to Continue!",
                  style: TextStyle(
                    fontSize: 32,
                  )),
              SizedBox(
                height: 64,
              ),
              TextField(
                controller: _firstNameTextEditingController,
                decoration: AppInputDecoration().boxDecoration("First Name"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _lastNameTextEditingController,
                decoration: AppInputDecoration().boxDecoration("Last Name"),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                controller: _emailTextEditingController,
                decoration: AppInputDecoration().boxDecoration("Email"),
              ),
              SizedBox(
                height: 16,
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
                        handleSignUpInput();
                      },
                      child: Text("Sign Up")),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void handleSignUpInput() {
    String firstName = _firstNameTextEditingController.text.trim();
    String lastName = _lastNameTextEditingController.text.trim();
    String email = _emailTextEditingController.text.trim();
    String password = _passwordTextEditingController.text.trim();

    if (firstName.isEmpty ||
        lastName.isEmpty ||
        email.isEmpty ||
        password.isEmpty) {
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
