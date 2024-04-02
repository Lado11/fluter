import 'package:flutter/material.dart';

import '../../resources/theme/app_color.dart';
import '../../resources/theme/text_styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(
              color: gray400,
              height: 36,
            )),
      ),
      Text(
        "OR",
        style: semiBold12TextStyle,
      ),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: gray400,
              height: 36,
            )),
      ),
    ]);
  }
}
