import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  final String title;
  final onPress;

  const DetailsButton({Key? key, required this.onPress, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      //width: 110,
      height: 40,
      child: RaisedButton(
        onPressed: onPress,
        elevation: 8,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        color: Color(0xff3AAD26),
      ),
    );
  }
}
