import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/tab_item.dart';
import '../tabs/dashboard.dart' as _dashboardTab;
import '../tabs/goals.dart' as _goalsTab;
import '../tabs/ranking.dart' as _rankingTab;

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
    return Scaffold(
      // APP BAR
      appBar: AppBar(
        title: Text(
          _titleApp,
          style: TextStyle(
            fontSize: Theme
                .of(context)
                .platform == TargetPlatform.iOS ? 17 : 20,
          ),
        ),
        elevation: Theme
            .of(context)
            .platform == TargetPlatform.iOS ? 0 : 4,
      ),
      // CONTENT OF TABS
      body: PageView(
        controller: _tabController,
        onPageChanged: onTabChanged,
        children: <Widget>[
          _dashboardTab.Dashboard(),
          _rankingTab.Ranking(),
          _goalsTab.Goals()
        ],
      ),
      // TABS

      bottomNavigationBar: Theme
          .of(context)
          .platform == TargetPlatform.iOS ?
      // FOR iOS PLATFORM
      CupertinoTabBar(
          items: null
      ) :
      // FOR Android PLATFORM
      BottomNavigationBar(
          items: null
      ),
    );
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


  void onTabChanged(int value) {

  }
}
