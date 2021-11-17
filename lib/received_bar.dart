import 'package:flutter/material.dart';

class ReceivedBar extends StatefulWidget {
  const ReceivedBar({Key? key}) : super(key: key);

  @override
  _ReceivedBarState createState() => _ReceivedBarState();
}

class _ReceivedBarState extends State<ReceivedBar> {
  int _opcaoSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: const Color(0xff00c9ff),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    _opcaoSelecionada = 0;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 4.0,
                                color: _opcaoSelecionada == 0 ? Colors.white : Colors.transparent
                            )
                        )
                    ),
                    child: const Text('Entrada')
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _opcaoSelecionada = 1;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 4.0,
                                color: _opcaoSelecionada == 1 ? Colors.white : Colors.transparent
                            )
                        )
                    ),
                    child: const Text('A fazer')
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _opcaoSelecionada = 2;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 4.0,
                                color: _opcaoSelecionada == 2 ? Colors.white : Colors.transparent
                            )
                        )
                    ),
                    child: const Text('Recusei')
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _opcaoSelecionada = 3;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 4.0,
                                color: _opcaoSelecionada == 3 ? Colors.white : Colors.transparent
                            )
                        )
                    ),
                    child: const Text('Finalizei')
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    _opcaoSelecionada = 4;
                  });
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 12, bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 4.0,
                                color: _opcaoSelecionada == 4 ? Colors.white : Colors.transparent
                            )
                        )
                    ),
                    child: const Text('Acompanhar')
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
