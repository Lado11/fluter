import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:studym8/ui/widgets/index.dart';
import '../../models/enum/route_enum.dart';

class AllCourses extends StatelessWidget {
  const AllCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          // size: 25,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: Image(image: AssetImage("assets/Group 42.png")),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: ImageUi(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: AboutWidgets(),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 34),
                  child: InfoBlockPage.medium()),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: InfoBlockPage.online(),
              ),
              InfoBlockPage.fixible(),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 34), child: Skills()),
              CourseInstructor(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButtonCustom.purple(
                    title: "Enroll Now - ${50}", onTab: () {
                  Navigator.pushNamed(context, "/${RouteEnum.enrol.name}");
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
