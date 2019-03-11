import 'package:flutter/material.dart';
import 'package:wakatime_client/screens/login/login_screen.dart';
import 'package:wakatime_client/data/api/wakatime_api.dart';
import 'package:wakatime_client/data/model/user.dart';
import 'screens/home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _u =  WakaTimeApi().getUserInformation();
    _u.then((user){
      final User u = user;
      print(u.email);
    });
    return _u != null ? WakatimeApp() : LoginScreen() ;
  }
}
