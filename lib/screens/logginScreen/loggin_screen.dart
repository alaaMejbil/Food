import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:login/screens/logginScreen/widgets/my_text_fields.dart';
import 'package:login/screens/logginScreen/widgets/signup_button.dart';
import 'package:login/screens/logginScreen/widgets/tabbola_logo.dart';
import 'package:provider/provider.dart';

import 'homScreen/home_screen.dart';

class LogginScreen extends StatefulWidget {
  @override
  State<LogginScreen> createState() => _LogginScreenState();
}

class _LogginScreenState extends State<LogginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = Provider.of<ThemeProvider>(context).tm;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg2.png'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              //topRight corner
              Positioned(
                top: 0,
                right: 0,
                left: size.width * 0.45,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "images/1.png",
                    ),
                    Positioned(
                      top: 30,
                      right: 5,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              Text(
                                'Already have an',
                                softWrap: false,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                'account?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Color(0xffD52020),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //topLeft corner
              Positioned(
                top: 0,
                right: size.width * 0.7,
                left: 0,
                child: Image.asset(
                  "images/2.png",
                ),
              ),
              Positioned(
                top: size.height * 0.25,
                right: 0,
                left: size.width * 0.55,
                child: Image.asset(
                  "images/3.png",
                  //width: 400,
                ),
              ),
              ClipPath(
                clipper: BackgroundClipper(),
                child: Container(
                  //height: size.height * 0.9,
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width * 0.08,
                      vertical: size.height * 0.05),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(70.0)),
                    color: tm == ThemeMode.light
                        ? Colors.white.withOpacity(0.95)
                        : Colors.black.withOpacity(0.9),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey,
                        offset: Offset(2, 2),
                        blurStyle: BlurStyle.outer,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 30.0,
                      ),
                      const TaboolaLogo(),
                      const UserNameTextField(),
                      const EmailTextField(),
                      const PasswordTextField(),
                      const RePasswordTextField(),
                      Center(child: SignUpButton()),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..lineTo(0.0, size.height) // (0 , h)
      ..lineTo(size.width, size.height) //(w , h)
      ..lineTo(size.width, size.height * 0.33) //(w , 0.25h)
      //..quadraticBezierTo(size.width, 0.0, size.width - 20.0, 0.0)
      ..lineTo((size.width * 0.15), 0)
      //..quadraticBezierTo(10.0, 85.0, 0.0, 120.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
