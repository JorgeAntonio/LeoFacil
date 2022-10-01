import 'package:flutter/material.dart';
import 'package:leofacil/src/colors/colors.dart';
import 'package:leofacil/src/tabs/home_tab/home_tab.dart';
import 'package:leofacil/src/tabs/profile_tab/profile_tab.dart';
import 'package:leofacil/src/tabs/play_tab/play_tab.dart';
import 'package:leofacil/src/tabs/favourite_tab/favourite_tab.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
    });
  }


  final List<Widget> _widgetOption = [
    const HomeTab(),
    const PlayTab(),
    const FavouriteTab(),
    const ProfileTab()
  ];

  int _selectedItemIndex = 0; 

   void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.text_increase), label: 'Aprender'),
          BottomNavigationBarItem(icon: Icon(Icons.games_sharp), label: 'Jugar'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Perfil')
        ]);
  }

}