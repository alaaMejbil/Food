import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class RoundedButton extends StatelessWidget {
  final onPress;
  final String title;

  const RoundedButton({
    Key? key,
    required this.onPress,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = Provider.of<ThemeProvider>(context).tm;
    return Container(
      //width: 110,
      height: 30,
      child: RaisedButton(
        onPressed: onPress,
        elevation: 15,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        color: tm == ThemeMode.light ? Color(0xffD52020) : Colors.pinkAccent,
      ),
    );
  }
}
