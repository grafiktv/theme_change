import 'package:flutter/material.dart';


ThemeData changeTheme() => ThemeData(
    fontFamily: "Georgia",
    splashColor: Colors.greenAccent,

    primaryColor: Colors.deepPurple,
    colorScheme: ColorScheme.fromSwatch(
      brightness: Brightness.light,
      primarySwatch: Colors.deepOrange,
      backgroundColor: Colors.blueGrey,
      primaryColorDark: Colors.red

    ).copyWith(
      secondary: Colors.green,

    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
      headline2: TextStyle(fontSize: 28.0, color: Colors.blueGrey, fontStyle: FontStyle.italic),
      headline3: TextStyle(fontSize: 28.0, color: Colors.red, fontStyle: FontStyle.italic),
      headline4: TextStyle(fontSize: 10.0, color: Colors.brown, fontStyle: FontStyle.italic),
      bodyText1: TextStyle(fontSize: 28.0, fontFamily: 'Arial', color: Colors.white),
      bodyText2: TextStyle(fontSize: 18.0, fontFamily: 'Arial'),
      button: TextStyle(fontSize: 25.0, fontFamily: 'Arial'),


    )
);
