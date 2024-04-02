import 'package:flutter/material.dart';

import '../../resources/theme/text_styles.dart' as styles;

class TitleTileWidget extends StatelessWidget {
  const TitleTileWidget(
      {super.key, required this.title, this.subTitle, this.description});

  final String title;
  final String? subTitle;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (subTitle != null)
          Text(
            subTitle!.toUpperCase(),
            style: styles.semiBold12TextStyle,
          ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: styles.semiBold32TextStyle,
        ),
        const SizedBox(
          height: 16.0,
        ),
        if (description != null)
          Text(
            description!,
            style: styles.semiBold14TextStyle,
          )
      ],
    );
  }
}
