import 'package:crud_app/ui/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromRGBO(66, 158, 82, 1);
    const primaryColorDark = Color.fromRGBO(36, 86, 44, 1);
    const primaryColorLight = Color.fromRGBO(126, 201, 138, 1);
    return MaterialApp(
      title: 'CRUD TEST',
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        primaryColorLight: primaryColorLight,
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          foregroundColor: primaryColorDark,
          shadowColor: primaryColorDark,
        ),
        tabBarTheme: const TabBarTheme(
            unselectedLabelColor: primaryColorLight, labelColor: Colors.white),
        indicatorColor: primaryColorDark,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColorDark,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
        inputDecorationTheme: const InputDecorationTheme(
            iconColor: primaryColorLight,
            labelStyle: TextStyle(color: primaryColorDark),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColorLight)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: primaryColor)),
            alignLabelWithHint: true),
        textTheme: const TextTheme(
            labelLarge: TextStyle(color: primaryColorDark),
            displayLarge: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: primaryColorDark)),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: primaryColor)
            .copyWith(background: Colors.white),
      ),
      home: const LoginScreen(),
    );
  }
}
