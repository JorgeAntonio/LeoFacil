import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/commons_widgets/cards/populares_card.dart';
import 'package:leofacil/src/commons_widgets/headers/header_text.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(slivers: [
      SliverList(
          delegate: SliverChildListDelegate([
        Container(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 15, right: 8),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: headerText(
                        texto: "Aprende Fácil",
                        color: orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 28)),
              ),
              _userData(context),
              //_topBar(context),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 15, right: 8, bottom: 20),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: headerText(
                        texto: "Lecciones Populares",
                        color: Colors.black,
                        fontSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _sliderCards(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 8, top: 20, bottom: 20),
                child:
                    _headers(context, 'Vamos a aprender', 'Ver todo'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: popularesCards(
                    context: context,
                    image: const NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3152/3152869.png'),
                    title: 'Aprende las vocales',
                    subtitle: 'Lección básica',
                    review: 'Lección de lectura',
                    hasActionButton: true),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: popularesCards(
                    context: context,
                    image: const NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/1081/1081015.png'),
                    title: 'Escribe tu nombre',
                    subtitle: 'Lección básica',
                    review: 'Lección de escritura',
                    hasActionButton: true),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: popularesCards(
                    context: context,
                    image: const NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/709/709388.png'),
                    title: 'Cuenta los numeros',
                    subtitle: 'Lección básica',
                    review: 'Lección de Numeros',
                    hasActionButton: true),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 8, top: 20, bottom: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'collections');
                    },
                    child: _headers(context, 'Lecturas', 'Ver todo')),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: _sliderCollections(),
              )
            ],
          ),
        )
      ]))
    ]));
  }
}

Widget _userData(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            headerText(
                texto: "Hola, Cesar",
                fontSize: 22,
                color: Colors.black,),
            Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: 40.0,
                    height: 40.0,
                    margin: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(209, 209, 214, 1.0),
                        borderRadius: BorderRadius.circular(30)),
                    child: IconButton(
                        icon: const Icon(
                          Icons.person,
                          size: 25.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, 'profile');
                        }))),
          ],
        ),
      ),
    ],
  );
}

Widget _topBar(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'search'),
        child: Container(
          width: 270,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(234, 236, 239, 1.0),
              ),
              borderRadius: BorderRadius.circular(20.0)),
          child: Row(
            children: [
              Icon(
                Icons.search,
                size: 20.0,
                color: gris,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text('Buscar',
                      style: TextStyle(color: gris, fontSize: 17.0)))
            ],
          ),
        ),
      ),
      Container(
          width: 40.0,
          height: 40.0,
          margin: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(209, 209, 214, 1.0),
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              icon: const Icon(
                Icons.person,
                size: 25.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'profile');
              }))
    ],
  );
}

Widget _sliderCards() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return _tarjeta(context);
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      width: 150,
      height: 160,
      margin: const EdgeInsets.all(8),
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const Image(
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/2987/2987996.png')),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Escribe una idea',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Text('¿En qué estas pensando? ',
                    style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 10)),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(texto: textHeader, color: Colors.black, fontSize: 18),
      ),
      const Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 13),
            ),
            const Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _sliderCollections() {
  return SizedBox(
    height: 200.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return _tarjetaCollection(context);
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(210, 211, 215, 1.0),
          offset: Offset(1, 5),
          blurRadius: 10.0,
        )
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: const Image(
              width: 130,
              height: 180,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://1.bp.blogspot.com/-Nh23mOJTIJg/Xq4Em_EeBhI/AAAAAAAAAIY/3ycCR0dTGCgfNJ36fl4wHGBSX54__BiiwCEwYBhgL/s1600/ElPrincipito.jpg')),
        ),
      ],
    ),
  );
}
