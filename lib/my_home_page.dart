import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:tiss_example/icons/received_icons.dart';
import 'package:tiss_example/icons/sent_icons.dart';
import 'package:tiss_example/received/received_page.dart';
import 'package:tiss_example/sent/sent_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  int _bottomNavOption = 0;
  Widget _currentPage = const ReceivedPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _currentPage,
      ),
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.fixedCircle,
        backgroundColor: Colors.white,
        color: Colors.grey,
        activeColor: _bottomNavOption == 1 ? const Color(0xffa98e47) : const Color(0xff00c9ff),
        items: const [
          TabItem(
            icon: Icon(
              ReceivedIcon.receivedIcon,
              color: Colors.grey,
              size: 12,
            ),
            title: "Recebidas",
            activeIcon: Icon(
              ReceivedIcon.receivedIcon,
              color: Color(0xff00c9ff),
              size: 12,
            ),
          ),
          TabItem(
            icon: Icon(
                SentIcon.sentIcon,
                color: Colors.grey
            ),
            title: "Enviadas",
            activeIcon: Icon(
                SentIcon.sentIcon,
                color: Color(0xffa98e47)
            ),
          ),
          TabItem(
            icon: Icon(
              Icons.add_rounded,
              size: 48,
              color: Colors.white,
            )
          ),
          TabItem(icon: Icons.notifications, title: "Notificações"),
          TabItem(icon: Icons.menu, title: "Menu"),
        ],
        // initialActiveIndex: 1,
        onTap: (int i){
          setState(() {
            _bottomNavOption = i;
            if (i == 0){
              _currentPage = const ReceivedPage();
            } else {
              if ( i == 1) {
                _currentPage = const SentPage();
              }
            }
          });
        },
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );



  }
}
