import 'package:flutter/material.dart';
import '../../resources/index.dart';

class ImageUi extends StatelessWidget {
  const ImageUi({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage("assets/image_ui.png")),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Text("Introduction to UI Design",
              style: roboto24TextStyle),
        ),
        Text(
          "Course Tutor: Steve Holmes",
          style:roboto16TextStyle,
        ),
      ],
    );
  }
}
