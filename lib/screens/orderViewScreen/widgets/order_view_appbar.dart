import 'package:flutter/material.dart';

PreferredSizeWidget? getAppBar(BuildContext context) {
  var size = MediaQuery.of(context).size;

  return AppBar(
    backgroundColor: Colors.transparent,
    title: Image.asset('images/taboola.png', width: size.width * 0.5),
    centerTitle: true,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Color(0xff3AAD26),
        size: 25,
      ),
    ),
  );
}

class AppBarDivider extends StatelessWidget {
  const AppBarDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 2,
      width: size.width,
      decoration: const BoxDecoration(
        color: Color(0xff3AAD26),
        boxShadow: [
          BoxShadow(
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
    );
  }
}
