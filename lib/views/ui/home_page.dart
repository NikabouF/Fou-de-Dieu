import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foudedieu/views/ui/categories_screen.dart';
import 'package:foudedieu/views/ui/favoris_screen.dart';
import 'package:foudedieu/views/ui/home.dart';
import 'package:foudedieu/views/ui/profil_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current_index = 0;
  final List<Container> tabs = [
    Container(
      child: Home(),
    ),
    Container(
      child: CategoriesScreen(),
    ),
    Container(
      child: FavorisScreen(),
    ),
    Container(
      child: ProfilScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text(
            'Fou de Dieu',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: tabs[_current_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _current_index,
          //type: BottomNavigationBarType.fixed,
          iconSize: 25,
          selectedFontSize: 20,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Accueil"),
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("Catégories"),
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("Favoris"),
              backgroundColor: Colors.amber,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profil"),
              backgroundColor: Colors.amber,
            ),
          ],
          onTap: (index) {
            setState(() {
              _current_index = index;
            });
          },
        ));
  }
}
