import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: const TextStyle(
                color: Color(0xFF969696),
                fontSize: 14
            ),
            children: <TextSpan>[
              const TextSpan(text: 'Ao continuar, você aceita os\n'),
              TextSpan(
                  text: 'termos de uso',
                  style: const TextStyle(
                      color: Color(0xFF00c9ff),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.5
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () { launch('https://tiss.app/#/term'); }
              ),
              const TextSpan(text: ' e a '),
              TextSpan(
                  text: 'política de privacidade',
                  style: const TextStyle(
                      color: Color(0xFF00c9ff),
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.5
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () { launch('https://tiss.app/#/term'); }
              ),
            ]
        ),
      ),
    );
  }
}
