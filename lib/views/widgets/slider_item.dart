import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foudedieu/models/slide_model.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 5, bottom: 2),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Image.asset(slideList[index].imageUrl),
        ),
//        Container(
//          width: 500,
//          height: 300,
//          decoration: BoxDecoration(
//            //shape: BoxShape.circle,
//            image: DecorationImage(
//                image: AssetImage(slideList[index].imageUrl),
//                fit: BoxFit.contain),
//          ),
//        ),
        SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title,
          style: TextStyle(
            fontSize: 28,
            color: Colors.amber,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          slideList[index].description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
