import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final String text;

  const IconWithText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Image.asset(
            'images/tomato.png',
            width: 12,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
