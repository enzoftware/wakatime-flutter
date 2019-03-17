import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/tabs.dart';

class WakatimeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Starter',
      theme: new ThemeData(
          primarySwatch: Colors.blueGrey,
          scaffoldBackgroundColor: Colors.white,
          primaryColor: Colors.blueGrey, backgroundColor: Colors.white
      ),
      home: new Tabs(),
    );
  }
}
