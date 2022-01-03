import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class LightDarkSwitch extends StatelessWidget {
  const LightDarkSwitch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Provider.of<ThemeProvider>(context).value,
      activeColor: Colors.pink,
      inactiveThumbColor: Colors.green,
      onChanged: (bool val) =>
          Provider.of<ThemeProvider>(context, listen: false)
              .onChangeSwitch(val),
    );
  }
}
