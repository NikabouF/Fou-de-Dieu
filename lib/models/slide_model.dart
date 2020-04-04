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
      imageUrl: 'assets/images/girl_sit.png',
      title: 'Pour votre édification',
      description: 'Pour votre edification quotienne Pour votre edification '
          'Pour votre edification Pour votre edification'),
  Slide(
      imageUrl: 'assets/images/everywhere_2.png',
      title: 'Partout où vous êtes',
      description: 'Vous pouvez lire ou écouter les enseignements partout où '
          'vous êtes'),
  Slide(
      imageUrl: 'assets/images/scrolling_2.png',
      title: 'Partager avec vos amis',
      description: 'Vous avez la possibilité de partager avec vos amis, les '
          'enseignements, les prières si vous le souhaitez'),
  Slide(
      imageUrl: 'assets/images/libraries.png',
      title: 'Contenu catégorisé ',
      description:
          'Les différents enseignements sont classés par catégorie et vous '
          'avez la possibilité de créer vos favoris'),
];
