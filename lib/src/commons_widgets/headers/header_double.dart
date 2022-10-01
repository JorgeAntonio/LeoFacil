import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';
//Common Widgets
//Colors

Widget headerDoubleText({
  required String textHeader,
  required String textAction,
  Function()? func,
}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontSize: 20.0),
        Spacer(),
        GestureDetector(
          onTap: func,
          child: headerText(
              texto: textAction,
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15.0),
        )
      ],
    ),
  );
}
