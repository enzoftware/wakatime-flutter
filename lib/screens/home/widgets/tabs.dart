import 'package:flutter/material.dart';
import '../model/tab_item.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {

  PageController _tabController;
  String _titleApp = "";
  int _tab = 0;

  @override
  Widget build(BuildContext context) {

  }

  @override
  void initState() {
    super.initState();
    _tabController = new PageController();
    this._titleApp = tabItems[0].title;
  }


  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

}
