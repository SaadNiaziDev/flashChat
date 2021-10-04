import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/roundedbuttons.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                child: Image.asset('images/logo.png'),
                height: 100.0,
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                FlickerAnimatedText('Flash Chat',textStyle: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w900
                )),
              ],
              onTap: () {
                print('Tap happened!');
              },
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundButtons(
              colour: Colors.lightBlueAccent,
              title: 'Login',
              ontap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundButtons(
              colour: Colors.blueAccent,
              title: 'Register',
              ontap: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
