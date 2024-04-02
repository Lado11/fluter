import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:news_app/localization/index.dart';
import 'package:news_app/models/onbording_data/onbording_data.dart';
import '../../widgets/index.dart';
import '../../../resources/index.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Expanded(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ViesInstanceOnbording(
              data: data[index],
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButtonCustom.secondary(
                        title: index < 2 ? buttonSkip : regButton,
                        onTab: () {
                          Navigator.pushNamed(context, "/login");
                        })),
                const SizedBox(width: 16),
                Expanded(
                    child: ElevatedButtonCustom.primary(
                        IconDy: Icons.arrow_forward,
                        title: index < 2 ? buttonNext : loginButton,
                        onTab: () {
                          setState(() {
                            if (index < data.length - 1) {
                              index++;
                            } else {
                              Navigator.pushNamed(context, "/login");
                            }
                          });
                        }))
              ],
            ),
            SizedBox(
              height: 32,
            ),
            new DotsIndicator(
              dotsCount: 3,
              position: index,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                color: primary100,
                // Inactive color
                activeColor: blue500,
              ),
            )
          ],
        ),
      ),
    )));
  }
}
