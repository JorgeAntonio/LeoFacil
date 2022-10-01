import 'package:flutter/material.dart';
//COLORS
//COMMONS WIDGETS
import 'package:leofacil/src/colors/colors.dart';
//Utils
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';
import 'package:leofacil/src/utils/styles/box_decoration_shadows.dart';

Widget favouritesCard({
  required BuildContext context,
  double marginTop = 8.0,
  double marginRight = 0.0,
  double marginBotton = 8.0,
  double marginLeft = 0.0,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required bool hasActionButton,
  bool isFavourite = true,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      left: marginLeft,
      bottom: marginBotton,
    ),
    padding: const EdgeInsets.only(left: 2, right: 2, top: 10, bottom: 10),
    width: double.infinity,
    decoration:
        createBoxDecorationWithShadow(borderRadius: BorderRadius.circular(10)),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(width: 90, height: 90, fit: BoxFit.cover, image: image),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText(
                        texto: title,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.star,
                        size: 35.0,
                        color: isFavourite ? amarillo : gris,
                      ),
                      onPressed: () {})
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 5.0),
                child: headerText(
                    texto: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
