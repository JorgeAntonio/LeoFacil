import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/cards/favourites_card.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';

class PlayTab extends StatefulWidget {
  const PlayTab({super.key});

  @override
  State<PlayTab> createState() => _PlayTabState();
}

class _PlayTabState extends State<PlayTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: const Text(''),
            backgroundColor: white,
            title: headerText(
                texto: 'A jugar',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
            centerTitle: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3407/3407037.png'),
                        title: 'Trivia de palabras',
                        subtitle: 'Intermedio',
                        review: 'Juego de lectura',
                        isFavourite: false,
                        hasActionButton: true,
                      ),
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3898/3898106.png'),
                        title: 'Sopa de letras',
                        subtitle: 'Principiante',
                        review: 'Juego de escritura',
                        isFavourite: true,
                        hasActionButton: true,
                      ),
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/1867/1867467.png'),
                        title: 'Suma de manzanas',
                        subtitle: 'Avanzado',
                        review: 'Juego de lectura',
                        isFavourite: false,
                        hasActionButton: true,
                      ),
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3444/3444655.png'),
                        title: 'Ruleta de cuentos',
                        subtitle: 'Avanzado',
                        review: 'Juego de lectura',
                        isFavourite: false,
                        hasActionButton: true,
                      ),
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/7179/7179183.png'),
                        title: 'Ordena las palabras',
                        subtitle: 'Avanzado',
                        review: 'Jeugo de lectura',
                        isFavourite: false,
                        hasActionButton: true,
                      ),                      
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}