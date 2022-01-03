import 'package:flutter/material.dart';
import 'package:login/widgets/icon_with_text.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        IconWithText(text: 'User Name: lorem ipsum dolor'),
        IconWithText(text: 'Delivery Address: lorem ipsum dolor..'),
        IconWithText(text: 'Contact Numbers: 0957773484 , 0939238474'),
        IconWithText(text: 'Extra Info: lorem ipsum dolor..'),
      ],
    );
  }
}
