import 'package:flutter/material.dart';

class TabItem {
  const TabItem({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<TabItem> tabItems = const <TabItem> [
  const TabItem(title: 'Dashboard', icon: Icons.assessment),
  const TabItem(title: 'Goals', icon: Icons.assistant_photo),
  const TabItem(title: 'Ranking', icon: Icons.filter_list)
];