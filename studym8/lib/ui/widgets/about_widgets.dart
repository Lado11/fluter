import 'package:flutter/material.dart';
import 'package:studym8/localization/localization.dart';
import 'package:readmore/readmore.dart';
import 'package:studym8/resources/index.dart';

class AboutWidgets extends StatefulWidget {
  const AboutWidgets({super.key});

  @override
  State<AboutWidgets> createState() => _AboutWidgets();
}

class _AboutWidgets extends State<AboutWidgets> {
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        "About this course",
        style: robotoBlackBold16TextStyle
      ),
      ReadMoreText(
        "$Rich_Text",
        trimMode: TrimMode.Line,
        trimLines: 2,
        colorClickableText:primary,
        trimCollapsedText: '...Read more',
        trimExpandedText: '...Read less',
        moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      )
    ]);
  }
}
