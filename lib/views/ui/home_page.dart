import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          'Fou de Dieu',
          style: TextStyle(color: Colors.white),
        ),
//        leading: IconButton(
//          icon: Icon(
//            Icons.arrow_back_ios,
//            color: Colors.white,
//          ),
//          onPressed: () {
//            Navigator.of(context).pop();
//          },
//        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.yellow,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.yellow,
        height: 50,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: Colors.amber,
          ),
          Icon(
            Icons.add,
            size: 20,
            color: Colors.amber,
          ),
          Icon(
            Icons.list,
            size: 20,
            color: Colors.amber,
          ),
        ],
        animationDuration: Duration(
          microseconds: 200,
        ),
        animationCurve: Curves.bounceInOut,
        onTap: (Index) {
          debugPrint("Current is $Index");
        },
      ),
    );
  }
}
