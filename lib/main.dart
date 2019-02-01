import 'package:flutter/material.dart';
import 'package:wakatime_client/screen/login_screen.dart';
import 'package:wakatime_client/data/api/wakatime_api.dart';
import 'package:wakatime_client/data/model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final wakatimeApi = WakaTimeApi();

  @override
  Widget build(BuildContext context) {
    final _u = wakatimeApi.getUserInformation();
    _u.then((user){
      print(user.id);
    });
    print("54dwa54da5w4d5a4dwdadwa4a");
    return MaterialApp(
      title: 'WakaTime',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: LoginScreen()
    );
  }
}
