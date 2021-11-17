import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiss_example/received/accompany_screen.dart';
import 'package:tiss_example/received/finished_screen.dart';
import 'package:tiss_example/received/inbox_screen.dart';
import 'package:tiss_example/received/refused_screen.dart';
import 'package:tiss_example/received/to_do_screen.dart';

class ReceivedTabBar extends StatefulWidget {
  const ReceivedTabBar({Key? key}) : super(key: key);

  @override
  _ReceivedTabBarState createState() => _ReceivedTabBarState();
}

class _ReceivedTabBarState extends State<ReceivedTabBar> with TickerProviderStateMixin {
  int tabIndex = 0;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff00c9ff),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                indicatorColor: Colors.white,
                labelStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.nunito().fontFamily,
                ),
                labelColor: Colors.white,
                isScrollable: true,
                tabs: const [
                  Tab(text: "Entrada",),
                  Tab(text: "A fazer",),
                  Tab(text: "Recusadas",),
                  Tab(text: "Finalizadas",),
                  Tab(text: "Acompanhar",),
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            InboxScreen(),
            ToDoScreen(),
            RefusedScreen(),
            FinishedScreen(),
            AccompanyScreen()
          ],
        ),
      ),
    );
  }
}
