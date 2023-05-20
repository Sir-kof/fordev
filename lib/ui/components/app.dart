import 'package:flutter/material.dart';
import '../pages/pages.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primatyColor = Color.fromRGBO(136, 14, 19, 1);
    final primatyColorDark = Color.fromRGBO(96, 0, 39, 1);
    final primatyColorLigth = Color.fromRGBO(188, 71, 123, 1);

    return MaterialApp(
      title: '4Dev',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primatyColor,
        primaryColorDark: primatyColorDark,
        primaryColorLight: primatyColorLigth,
        accentColor: primatyColor,
        backgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: primatyColorDark,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primatyColorLigth)
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primatyColor),
          ),
          alignLabelWithHint: true,
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(primary: primatyColor),
          buttonColor: primatyColor,
          splashColor: primatyColorLigth,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20,),
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}