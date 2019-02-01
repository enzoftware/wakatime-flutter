import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }

}

class LoginScreenState extends State<LoginScreen>{
  int _cIndex = 0;
  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("WakaTime"),
        ),
        body: Center(
          child: Text("Welcome to WakaTime"),
        ),
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed ,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.language,color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Languages')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.assistant_photo,color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Goals')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time,color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Stats')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity,color: Color.fromARGB(255, 0, 0, 0)),
                title: Text('Profile')
            )
          ],
          onTap: (index){
            _incrementTab(index);
          },
        )
    );
  }
}