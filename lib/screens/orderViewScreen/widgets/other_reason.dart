import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class OtherReason extends StatelessWidget {
  const OtherReason({
    Key? key,
    required this.selectedReasonIndex,
  }) : super(key: key);

  final int selectedReasonIndex;

  @override
  Widget build(BuildContext context) {
    var tm = Provider.of<ThemeProvider>(context).tm;
    return Text(
      "Other",
      style: TextStyle(
          fontSize: 16,
          color: selectedReasonIndex == -2
              ? const Color(0xff3AAD26)
              : tm == ThemeMode.light
                  ? Colors.black
                  : Colors.white),
    );
  }
}
