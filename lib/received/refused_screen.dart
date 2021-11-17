import 'package:flutter/material.dart';

class RefusedScreen extends StatefulWidget {
  const RefusedScreen({Key? key}) : super(key: key);

  @override
  _RefusedScreenState createState() => _RefusedScreenState();
}

class _RefusedScreenState extends State<RefusedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Tela Recusadas"),
      ),
    );
  }
}
