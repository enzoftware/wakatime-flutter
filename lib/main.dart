import 'package:flutter/material.dart';
import 'package:wakatime_client/screen/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WakaTime',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginScreen()
    );
  }
}
