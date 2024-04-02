import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screen/index.dart';

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      routes: {
        '/': (context) => FisrtPage(),
        '/onbording': (context) =>  OnbordingPage(),
        '/social': (context) =>  MediaPage(),
        "/courses" : (context) => AllCourses(),
        "/enrol":(context) => EnrolCourseScreen(),
        "/registration":(context) => RegistrationScreen(),
        "/auth":(context) => AuthScreen(),
        "/login":(context) => LoginScreen(),
        "/profile":(context) => SetUpProfileScreen(),
        "/my_courses_data":(context) => MyCourses()
      },
    );
  }
}
