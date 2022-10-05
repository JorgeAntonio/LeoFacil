//widgets
import 'package:flutter/material.dart';
//UI
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/backButtons/back_button.dart';
import 'package:leofacil/src/commons_widgets/buttons/rounded_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            const Image(
              width: double.infinity,
              height: 300.0,
              fit: BoxFit.cover,
              image: AssetImage('images/logingPage.jpg'),
              ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: backButton(context, Colors.white),
            )
          ],
        ),
        Transform.translate(
          offset: const Offset(0.0, -20.0),
          child: Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: [
                    const Text("Bienvenido",
                        style: TextStyle(
                            color: orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0)),
                    const Text("Ingresa con tu usuario",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0)),
                    _emailInput(),
                    _passwordInput(),
                    createButton(
                        context: context,
                        buttonColor: orange,
                        labelButton: 'Ingresar',
                        func: () {
                          Navigator.pushNamed(context, 'tabs');
                        }),
                    Container(
                      margin: const EdgeInsets.only(top: 30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'forgot-password');
                        },
                        child: const Text("Olvidaste tu contraseña?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 15.0)),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("No tienes una cuenta?",
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17.0)),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'sign-up');
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: const Text("Registrarse",
                                  style: TextStyle(
                                      color: orange,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15.0)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 20.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: const EdgeInsets.only(top: 20.0),
    padding: const EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(30.0)),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
