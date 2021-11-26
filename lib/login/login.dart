import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:tiss_example/login/flag_and_code_icon.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  int _currentStep = 1;
  TextEditingController _phoneNumberController = TextEditingController();

  void goToLogin(){
    print (_phoneNumberController.text);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
              children: <Widget>[
                StepProgressIndicator(
                  totalSteps: 3,
                  currentStep: _currentStep,
                  size: 8,
                  padding: 0,
                  selectedColor: const Color(0xff00c9ff),
                  unselectedColor: const Color(0xff00708D),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 34),
                        child: Text(
                          "Primeiro, informe seu DDD + número",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.3,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _phoneNumberController,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            TelefoneInputFormatter(),
                          ],
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none
                              )
                            ),
                            filled: true,
                            fillColor: const Color(0xFFF5F5F5),
                            prefixIcon: const FlagAndCodeIcon(),
                          ),
                          style: const TextStyle(
                            color: Color(0xFF00c9ff),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 34),
                        child: ElevatedButton(
                          onPressed: goToLogin,
                          child: const Text(
                            "Continuar",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffd2b25b),
                            minimumSize: const Size(200, 44),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ),
              ]
          )
      ),
    );
  }
}
