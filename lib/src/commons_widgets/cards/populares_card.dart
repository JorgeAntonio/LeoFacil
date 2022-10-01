import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
//COLORS

Widget popularesCards({
  required BuildContext context,
  double marginTop = 0.0,
  double marginRight = 0.0,
  double marginBotton = 0.0,
  double marginLeft = 3.0,
  required ImageProvider<Object> image,
  required String title,
  required String subtitle,
  required String review,
  required bool hasActionButton,
}) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          //Navigator.pushNamed(context, 'place-detail');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(210, 211, 215, 1.0),
                offset: Offset(1, 5),
                blurRadius: 10.0,
              )
            ],
          ),
          margin: EdgeInsets.only(
              top: marginTop = 5.0,
              right: marginRight,
              bottom: marginBotton,
              left: marginLeft),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                      width: 80, height: 80, fit: BoxFit.cover, image: image),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 7.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(vertical: 7.0),
                        child: Text(title,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0))),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(top: 5.0),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: amarillo, size: 16.0),
                        Text(
                          review,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ],
  );
}
