import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import '../homScreen/home_screen.dart';

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tm = Provider.of<ThemeProvider>(context).tm;
    return Container(
      margin: const EdgeInsets.only(top: 15),
      alignment: Alignment.center,
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(
                selectedPage: 0,
              ),
            ),
          );
        },
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: const Text(
          "      Sign Up      ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        color:
            tm == ThemeMode.light ? const Color(0xffD52020) : Colors.pinkAccent,
      ),
    );
  }
}
