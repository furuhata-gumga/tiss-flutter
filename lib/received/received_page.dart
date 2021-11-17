import 'package:flutter/material.dart';
import 'package:tiss_example/received/received_tab_bar.dart';

class ReceivedPage extends StatelessWidget {
  const ReceivedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ReceivedTabBar(),
      ),
    );
  }
}
