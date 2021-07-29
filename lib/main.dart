import 'package:flutter/material.dart';
import 'package:mmis/components/home_page.dart';
import 'package:mmis/components/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.deepOrange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(200, 60),
          ),
        ),
      ),
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/homepage": (context) => Homepage(),
      },
    );
  }
}
