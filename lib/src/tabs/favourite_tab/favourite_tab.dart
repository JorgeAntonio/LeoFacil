import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/cards/favourites_card.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';

class FavouriteTab extends StatefulWidget {
  const FavouriteTab({super.key});

  @override
  State<FavouriteTab> createState() => _FavouriteTabState();
}

class _FavouriteTabState extends State<FavouriteTab> {
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
                texto: 'Mis Favoritos',
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
                            'https://1.bp.blogspot.com/-Nh23mOJTIJg/Xq4Em_EeBhI/AAAAAAAAAIY/3ycCR0dTGCgfNJ36fl4wHGBSX54__BiiwCEwYBhgL/s1600/ElPrincipito.jpg'),
                        title: 'El Principito',
                        subtitle: 'Antoine de Saint-Exupéry',
                        review: 'Lección de lectura',
                        isFavourite: true,
                        hasActionButton: true,
                      ),
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/1081/1081015.png'),
                        title: 'Escribe tu nombre',
                        subtitle: 'Lección básica',
                        review: 'Lección de escritura',
                        isFavourite: true,
                        hasActionButton: true,
                      ),
                      favouritesCard(
                        context: context,
                        image: const NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3898/3898106.png'),
                        title: 'Sopa de letras',
                        subtitle: 'Principiante',
                        review: 'Juego de lectura',
                        isFavourite: true,
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