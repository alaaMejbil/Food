import 'package:flutter/material.dart';

class TaboolaLogo extends StatelessWidget {
  const TaboolaLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "images/logo.png",
      width: 190,
    );
  }
}
