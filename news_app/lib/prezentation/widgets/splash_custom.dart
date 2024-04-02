import 'package:flutter/cupertino.dart';
import 'package:news_app/localization/app_strings_keys.dart' as strings;
import '../../resources/fonts/fonts.dart';
import '../../resources/images/images.dart';
import 'package:news_app/resources/theme/text_styles.dart';

class SplashCustom extends StatelessWidget {
  const SplashCustom._({
    super.key,
    this.height,
    this.width,
    this.fontSize,
  });

  factory SplashCustom.min() {
    return SplashCustom._(
      fontSize: 24.0,
      width: 35.0,
      height: 25.0,
    );
  }

  factory SplashCustom.max() {
    return SplashCustom._(
      fontSize: 40.0,
      width: 60.0,
      height: 42.0,
    );
  }

  final double? fontSize;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(newspaperFill), width: width, height: height),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: Text(strings.papary,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                fontFamily: Inter,
              )),
        )
      ],
    );
  }
}
