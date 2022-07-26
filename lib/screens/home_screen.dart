import 'package:flutter/material.dart';
import 'package:tugas/utilities/const.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const List<Widget> myTab = [
    Tab(
      text: "Tab 1",
    ),
    Tab(
      text: "Tab 2",
    ),
    Tab(
      text: "Tab 3",
    ),
  ];

  static const List<String> myBodyTab = ["Tab 1", "Tab 2", "Tab 3"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: judul,
          bottom: TabBar(
            tabs: myTab,
          ),
        ),
        body: TabBarView(
          children: myBodyTab
              .map(
                (e) => Center(
                  child: Text(
                    e.toString(),
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
