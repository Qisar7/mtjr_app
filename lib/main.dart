import 'package:fakeshop1/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainScreen());
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_screen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.red.shade500),
      ),
    );
  }
}
