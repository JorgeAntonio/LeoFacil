import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/backButtons/back_button.dart';
import 'package:leofacil/src/commons_widgets/buttons/rounded_button.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';
//Colors

//COMMONS


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: Builder(builder: (BuildContext context) {
            return backButton(context, Colors.black);
          }),
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: ListView(
              children: [
                Center(
                  child: headerText(
                      texto: "Crear una cuenta",
                      color: primaryColor,
                      fontSize: 30.0),
                ),
                /*Text("Crear una cuenta",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0),
                    textAlign: TextAlign.center),*/
                _usernameInput(context),
                _dateOfBirthInput(context),
                _phoneInput(context),
                _emailInput(context),
                _passwordInput(context),
                createButton(
                    context: context,
                    buttonColor: orange,
                    labelButton: 'Registrarse',
                    func: () {}),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    child: const Text(
                        'Al registrarse usted acepta todos los Terminos y Condiciones',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0)))
              ],
            ),
          ),
        ));
  }
}

Widget _usernameInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          hintText: 'Nombre de usuario',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _emailInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Correo',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _phoneInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Telefono',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _dateOfBirthInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
          hintText: 'Fecha de nacimiento',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
        color: bgInputs, borderRadius: BorderRadius.circular(40.0)),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Contraseña',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
