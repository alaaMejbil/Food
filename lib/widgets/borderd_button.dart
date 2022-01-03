import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  final String title;
  final isPressed;
  final onPress;

  const BorderButton(
      {Key? key,
      required this.title,
      required this.onPress,
      required this.isPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 25,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        boxShadow: isPressed
            ? [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(1, 5),
                )
              ]
            : [],
      ),
      child: RaisedButton(
        onPressed: onPress,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: Colors.black,
            width: 1.5,
          ),
        ),
        color: Colors.white,
        textColor: Colors.black,
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
