import 'package:flutter/material.dart';

class FlagAndCodeIcon extends StatelessWidget {
  const FlagAndCodeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 4, 12),
            child: Image.asset(
                'assets/brasil.png',
                width: 30,
                height: 20,
                fit: BoxFit.fill,
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                colorBlendMode: BlendMode.modulate
            ),
          ),
          const Text(
            '+55',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
