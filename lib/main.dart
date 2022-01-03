import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/provider/theme_provider.dart';
import 'package:login/screens/logginScreen/homScreen/home_screen.dart';
import 'screens/logginScreen/loggin_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeProvider>(
      create: (_) => ThemeProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: Provider.of<ThemeProvider>(context).tm,
      theme: ThemeData(
        //primaryColor: Colors.white,

        primarySwatch: Colors.red,
        canvasColor: Colors.white,
        accentColor: Colors.pink,
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.black),
          bodyText1: TextStyle(color: Colors.black),
        ),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.amber,
        canvasColor: Colors.black,
        accentColor: Colors.red,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline1: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white),
        ),
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              colorScheme: const ColorScheme.dark(),
            ),
      ),
      home: LogginScreen(),
    );
  }
}
