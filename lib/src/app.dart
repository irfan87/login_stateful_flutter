import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Stateful',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
