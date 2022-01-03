import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class IconWithReason extends StatelessWidget {
  final String text;

  //final bool isTapped;
  final int reasonIndex;
  final int selectedReasonIndex;
  final onTap;

  const IconWithReason(
      {Key? key,
      required this.text,
      //  required this.isTapped,
      required this.reasonIndex,
      required this.selectedReasonIndex,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tm = Provider.of<ThemeProvider>(context).tm;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              'images/tomato.png',
              width: 12,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: selectedReasonIndex == reasonIndex
                    ? Color(0xff3AAD26)
                    : tm == ThemeMode.light
                        ? Colors.black
                        : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
