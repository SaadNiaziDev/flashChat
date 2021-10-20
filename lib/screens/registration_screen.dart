import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/roundedbuttons.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id='registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                email=value;
              },
              decoration: kInputDecoration.copyWith(hintText: 'Enter Your Email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (value) {
                password=value;
              },
              decoration: kInputDecoration.copyWith(hintText: 'Enter Your Password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundButtons(
              colour: Colors.blueAccent,
              title: 'Register',
              ontap: () {
                Navigator.pushNamed(context, WelcomeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
