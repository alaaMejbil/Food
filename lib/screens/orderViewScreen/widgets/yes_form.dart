import 'package:flutter/material.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:login/screens/logginScreen/homScreen/home_screen.dart';
import 'package:login/widgets/icon_with_text.dart';
import 'package:login/widgets/rounded_button.dart';
import 'package:provider/provider.dart';

class YesForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var tm = Provider.of<ThemeProvider>(context).tm;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: size.width,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color:
                tm == ThemeMode.light ? const Color(0xffF2F0F0) : Colors.black,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const IconWithText(
                text: 'Please enter amount of money received',
              ),
              Container(
                width: size.width * 0.33,
                height: 30,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const IconWithText(
                text: 'Any Comments..',
              ),
              Container(
                width: size.width,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        RoundedButton(
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(
                    selectedPage: 1,
                  ),
                ),
              );
            },
            title: 'Submit'),
      ],
    );
  }
}
