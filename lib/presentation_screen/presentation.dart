import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tiss_example/login/login.dart';
import 'package:tiss_example/presentation_screen/presentation_button.dart';
import 'package:tiss_example/presentation_screen/terms.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation>{
  int _current = 0;
  final CarouselController controller = CarouselController();

  void goToLogin() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Login())
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = [
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              child: ClipOval(
                child: Image.asset('assets/list.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Bem-vindo ao Tiss",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52, right: 52, bottom: 16),
              child: Column(
                children: const <Text>[
                  Text(
                    "Acompanhe suas tarefas importantes",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "em um só lugar.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: PresentationButton(controller, 'Conhecer', const Color(0xFFFF8050), 1),
            ),
          ]
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              child: ClipOval(
                child: Image.asset('assets/sent-task.gif'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Envie tarefas",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52, right: 52, bottom: 16),
              child: Column(
                children: const <Text>[
                  Text(
                    "Envie tarefas para seus amigos",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "e acompanhe o status dela.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: PresentationButton(controller, 'Continuar', const Color(0xFF9ACC4C), 2),
            ),
          ]
      ),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              child: ClipOval(
                child: Image.asset('assets/receive-task.gif'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Receba tarefas",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 52, right: 52, bottom: 16),
              child: Column(
                children: const <Text>[
                  Text(
                    "Seus amigos vão te enviar tarefas que",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "você pode aceitar ou não.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: PresentationButton(controller, 'Começar', const Color(0xFFE4317E), 3, goToLogin: goToLogin,),
            ),
            const Terms()
          ]
      ),
    ].toList();

    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: CarouselSlider(
              items: imageSliders,
              carouselController: controller,
              options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                autoPlay: false,
                enlargeCenterPage: false,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageSliders.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => controller.animateToPage(entry.key),
                child: Container(
                  width: 40.0,
                  height: 3.5,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                      color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : const Color(0xff666666))
                          .withOpacity(_current == entry.key ? 1.0 : 0.2)),
                ),
              );
            }).toList(),
          ),
      ]),
    );
  }
}

