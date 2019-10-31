import 'package:flutter/material.dart';

void main() => runApp(WakatimeApp());

class WakatimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
              color: Colors.white,
            ),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                AppBar(
                  elevation: 0.0,
                  backgroundColor: Colors.transparent,
                  title: Text(
                    'Wakatime',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
