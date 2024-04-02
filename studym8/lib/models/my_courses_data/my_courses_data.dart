import 'package:flutter/material.dart';
enum MyCoursesEnum {
  cardOne(
      image: "assets/Rectangle 30.png",
      title: "Introduction to UI Design",
      desc: "3 hrs 45 mins",
      info:"15 videos",
      progress:0.75),
  cardTwo( image: "assets/Rectangle 44.png",
      title: "Basics of Figma",
      desc: "2 hrs 45 mins",
      info:"13 videos",
      progress:0.55),
  cardThree( image: "assets/Rectangle 44 (1).png",
      title: "Introduction to Data Science",
      desc: "2 hrs 45 mins",
      info:"14 videos",
      progress:0.4),
  cardFour( image:"assets/Rectangle 44 (2).png",
      title: "Basics of Adobe XD",
      desc: "2 hrs 45 mins",
      info:"12 videos",
  progress:0.85
  ),
  ;

  const MyCoursesEnum({required this.title, required this.image,required this.info,required this.desc,required this.progress});

  final String title;
  final String image;
  final String desc;
  final String info;
  final double progress;
}

