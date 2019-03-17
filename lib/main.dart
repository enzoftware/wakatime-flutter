import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wakatime_client/data/api/wakatime_api.dart';
import 'package:wakatime_client/data/model/user.dart';
import 'package:wakatime_client/screens/login/login_screen.dart';

import 'data/api/wakatime_api.dart';
import 'screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  bool isApiKeyCorrect = false;

  @override
  Widget build(BuildContext context) {
    final Future<User> _u = WakaTimeApi().getUserInformation();
    _u.then(onValue)
        .catchError(onError);
    sleep(new Duration(seconds: 5));
    return isApiKeyCorrect ? WakatimeApp() : LoginScreen();
  }

  void onError() {
    isApiKeyCorrect = false;
  }

  void onValue(User value) {
    print(value.email);
    isApiKeyCorrect = true;
  }
}
