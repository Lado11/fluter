import 'package:flutter/cupertino.dart';
import 'package:news_app/models/onbording_data/onbording_data.dart';
import 'package:news_app/resources/theme/text_styles.dart';

class ViesInstanceOnbording extends StatelessWidget {
  const ViesInstanceOnbording({super.key, required this.data});

  final OnbordingData data;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100),
            child: Image(image: AssetImage("${data.image}")),
          ),
          Text(
            data.title,
            style: textStyleHeader2,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16, bottom: 54),
            child: Text(
              data.desc,
              textAlign: TextAlign.center,
              style: textStyleDesc1,
            ),
          )
        ],
      ),
    );
  }
}
