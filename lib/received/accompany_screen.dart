import 'package:flutter/material.dart';

class AccompanyScreen extends StatefulWidget {
  const AccompanyScreen({Key? key}) : super(key: key);

  @override
  _AccompanyScreenState createState() => _AccompanyScreenState();
}

class _AccompanyScreenState extends State<AccompanyScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Tela de acompanhamento"),
      ),
    );
  }
}
