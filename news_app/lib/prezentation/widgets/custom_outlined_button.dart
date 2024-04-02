import 'dart:ui';

import 'package:flutter/material.dart';

import '../../resources/theme/app_color.dart';
import '../../resources/theme/text_styles.dart';


class CustomOutlinedButtonState extends StatelessWidget {
  const CustomOutlinedButtonState._(
      {super.key,
        required this.title,
        required this.onTab,
        required this.IconDy
      });

  final String title;
  final VoidCallback onTab;
  final IconData  IconDy;

  factory CustomOutlinedButtonState.otlined({
    required String title,
    required VoidCallback onTab,
    required IconData IconDy,
  }) {
    return CustomOutlinedButtonState._(
        title: title,
        onTab: onTab,
        IconDy: IconDy);
  }


  @override
  Widget build(BuildContext context) {
    return  OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(IconDy),
      label: Text(title,
          style: regular14TextStyle),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.0, color: gray60),
        shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
