import 'package:flutter/material.dart';

class OtherReasonTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 30,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            //borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
