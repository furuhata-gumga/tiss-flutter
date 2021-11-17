import 'package:flutter/material.dart';
import 'package:tiss_example/sent/sent_tab_bar.dart';

class SentPage extends StatelessWidget {
  const SentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SentTabBar(),
      ),
    );
  }
}
