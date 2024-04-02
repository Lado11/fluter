import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ElevatedButtonCustom extends StatelessWidget {
  const ElevatedButtonCustom._(
      {super.key,
      required this.title,
      required this.onTab,
      this.fontSize,
      this.backGround,
      this.color,
      this.IconDy});

  factory ElevatedButtonCustom.primary({
    required String title,
    required VoidCallback onTab,
     final IconDy,
  }) {
    return ElevatedButtonCustom._(
        title: title,
        fontSize: 14.0,
        onTab: onTab,
        IconDy: IconDy,
        backGround: Color(0xFF0864ED),
        color: Color(0xFFFFFFFF));
  }



  factory ElevatedButtonCustom.secondary({
    required String title,
    required VoidCallback onTab,
  }) {
    return ElevatedButtonCustom._(
        title: title,
        fontSize: 14.0,
        onTab: onTab,
        backGround: Color(0xFFE6F0FD),
        color: Color(0xFF0864ED));
  }

  final String title;
  final VoidCallback onTab;
  final double? fontSize;
  final Color? color;
  final Color? backGround;
  final IconData? IconDy;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton.icon(
      onPressed: onTab,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(167.0, 48.0),
        backgroundColor: backGround,
        shape: RoundedRectangleBorder(
            // borderRadius: BorderRadius.circular(15.0),
            ),
      ),
      label: Icon(IconDy, color: Colors.white),
      icon: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600,
                    color: color),
              ),
            ])
          ]),
    ));
  }
}
