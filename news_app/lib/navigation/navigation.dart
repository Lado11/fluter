import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../prezentation/screens/index.dart';


class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/":(context) => SplashgScreen(),
        '/onbording': (context) => OnbordingScreen(),
        "/login":(context)=> LoginScreen(),
        "/forgot":(context)=> ForgotPasswordScreen(),
        '/reset': (context) => ResetPasswordScreen(),
        "/create":(context) => CreateAccountScreen(),
        "/verafication":(context) => EmailVeraficationScreen(),
      },
    );
  }
}
