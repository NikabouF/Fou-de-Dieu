import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/assis_2.png',
      title: 'Pour votre edification',
      description:
          'Pour votre edification quotienne Pour votre edification Pour votre edification Pour votre edification'),
  Slide(
      imageUrl: 'assets/images/partage_2.png',
      title: 'Partager avec vos amis',
      description:
          'Pour votre edification quotienne Pour votre edification Pour votre edification Pour votre edification'),
  Slide(
      imageUrl: 'assets/images/watching_video_2.png',
      title: 'Visualiser des vidéos',
      description:
          'Pour votre edification quotienne Pour votre edification Pour votre edification Pour votre edification'),
];
