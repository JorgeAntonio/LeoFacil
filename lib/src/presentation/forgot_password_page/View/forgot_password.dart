
//MATERIAL
import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/alerts/alert_dialog.dart';
import 'package:leofacil/src/commons_widgets/backButtons/back_button.dart';
import 'package:leofacil/src/commons_widgets/buttons/rounded_button.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);
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
              headerText(
                  texto: 'Olvidaste tu contraseña?',
                  color: primaryColor,
                  fontSize: 30.0),
              /*Text("Olvidaste tu contraseña?",
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0)),*/
              Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text(
                    "Por favor, ingresa tu direccion correo electronico. Recibirás un link a tu correo para crear una nueva contraseña",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0)),
              ),
              _emailInput(),
              createButton(
                  context: context,
                  labelButton: 'Enviar',
                  buttonColor: orange,
                  shape: const StadiumBorder(),
                  func: () => _showAlerta(context)),
              //_sendButton(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: const EdgeInsets.only(top: 40.0),
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

void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      const NetworkImage(
          'https://www.shareicon.net/data/2015/12/02/681185_locked_512x512.png'),
      'Tu contraseña se ha reestablecido',
      'Pronto recibiras un email con un codigo para establecer tu nueva contraseña',
      createButton(
          context: context,
          labelButton: 'Hecho',
          buttonColor: orange,
          func: () {
            Navigator.pushNamed(context, 'login');
          }));
  //doneButton(context, 'Hecho'));
}

//
//Widget del boton enviar
/*Widget _sendButton(BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
      onPressed: () {
        _showAlerta(context);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Enviar',
        style: TextStyle(color: Colors.white, fontSize: 17.0),
      ),
    ),
  );
}*/
