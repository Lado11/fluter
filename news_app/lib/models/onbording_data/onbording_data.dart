import 'package:flutter/material.dart';

class OnbordingData {
  final String image;
  final String title;
  final String desc;

  OnbordingData({required this.title, required this.image, required this.desc});
}

List<OnbordingData> data = [
  OnbordingData(
      image: "assets/images/Illustration.png",
      title: "Explore thousands of latest news",
      desc:
          "Mauris urna velit, congue et aliquam non, imperdiet id massa. Etiam commodo interdum eros, eget hendrerit ex rhoncus in."),
  OnbordingData(
      image: "assets/images/Illustration (1).png",
      title: "Find news with better filters.",
      desc:
          "In sed massa sit amet nulla fringilla ultrices. Quisque vehicula gravida diam nec sodales. Donec pretium sem a justo egestas tincidunt."),
  OnbordingData(
      image: "assets/images/Illustration (2).png",
      title: "Bookmark,share comments news",
      desc:
          "Quisque vitae finibus metus. Sed non placerat neque. Phasellus erat ante, auctor vel scelerisque vitae, facilisis sed nisi."),
];
