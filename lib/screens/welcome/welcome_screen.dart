import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:wakatime_client/screens/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF2377b5),
        title: Text(
          'Welcome to Wakatime',
          style: TextStyle(
            fontFamily: 'SourceCodePro',
            fontWeight: FontWeight.w700,
          ),
        ),
        body: Text(
          'Improve your productivity',
          style: TextStyle(
              fontFamily: 'SourceCodePro', fontWeight: FontWeight.w500),
        ),
        mainImage: Image.asset(
          'assets/images/logo.png',
          height: 250.0,
          width: 250.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        pageColor: const Color(0xFF3c9fe4),
        title: Text(
          'Quantify your coding',
          style: TextStyle(
              fontFamily: 'SourceCodePro', fontWeight: FontWeight.w700),
        ),
        body: Text(
          'Open source plugins for automatic programming metrics.',
          style: TextStyle(
              fontFamily: 'SourceCodePro', fontWeight: FontWeight.w500),
        ),
        mainImage: Image.asset(
          'assets/images/ic_graph.png',
          height: 250.0,
          width: 250.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
        pageColor: const Color(0xFF2570ac),
        title: Text(
          'How it works',
          style: TextStyle(
              fontFamily: 'SourceCodePro', fontWeight: FontWeight.w700),
        ),
        body: Text(
          'Install the plugin for your editor, see metrics on your personal dashboard.',
          style: TextStyle(
              fontFamily: 'SourceCodePro', fontWeight: FontWeight.w500),
        ),
        mainImage: Image.asset(
          'assets/images/ic_eye.png',
          height: 250.0,
          width: 250.0,
          alignment: Alignment.center,
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Builder(
          builder: (context) => IntroViewsFlutter(
                pages,
                onTapDoneButton: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                pageButtonTextStyles:
                    TextStyle(color: Colors.white, fontSize: 18.0),
              )),
    );
  }
}
