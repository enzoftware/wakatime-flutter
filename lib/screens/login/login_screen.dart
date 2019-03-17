import 'package:flutter/material.dart';

import '../../data/api/wakatime_api.dart';
import '../home/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final apiKeyTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => WakatimeApp(),
      },
      title: "Login Screen",
      home: Builder(
        builder: (context) =>
            Scaffold(
              appBar: AppBar(
                title: Text("WakaTime"),
              ),
              body: Center(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/logohorizontal.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30),
                        child: TextField(
                          controller: apiKeyTextFieldController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Insert your api_key"),
                        ),
                      ),
                      MaterialButton(
                          child: const Text('Save API Key'),
                          color: Theme
                              .of(context)
                              .accentColor,
                          elevation: 4.0,
                          splashColor: Colors.blueGrey,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushReplacementNamed('/home');
                            WakaTimeApi().saveUserInformation(
                                apiKeyTextFieldController.text);
                            // TODO CHECK IF IS A CORRECT API KEY
                          }),
                    ],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.help_outline),
                  onPressed: () {
                    print("Pressed");
                  }),
            ),
      ),
    );
  }

  @override
  void dispose() {
    apiKeyTextFieldController.dispose();
    super.dispose();
  }
}
