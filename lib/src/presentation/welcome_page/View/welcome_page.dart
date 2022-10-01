//MATERIAL
import 'package:flutter/material.dart';
//UIS
import 'dart:ui';
//COLORS
//COMMONS

//SERVICES
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/buttons/rounded_button.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('images/welcomePage.jpg'),)),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: headerText(
                  texto: 'Aprende Fácil,',
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 44),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: headerText(
                  texto: 'porque aprender\nes divertido.',
                  color: Colors.white,
                  fontSize: 40),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: const Text(
                'Aprende, juega y crece.',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0),
              ),
            ),
            createButton(
                context: context,
                labelButton: 'Ingresar',
                buttonColor: orange,
                func: () {
                  Navigator.pushNamed(context, 'login');
                }),
            createButton(
                context: context,
                labelButton: 'Ingresar con Facebook',
                buttonColor: fbButtonColor,
                isWithIcon: true,
                icon: const NetworkImage(
                    'https://i.pinimg.com/originals/b1/c0/1d/b1c01d2be1b5c2ab7c76cfc99adfee53.png'),
                func: () => print('gotofacebook'))
            //AQUI VA EL BOTON AZUL
          ],
        )
      ],
    ));
  }
}
