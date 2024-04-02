import 'package:flutter/material.dart';
import '../../widgets/index.dart';
import '../../screens/index.dart';

class SplashgScreen extends StatefulWidget {
  const SplashgScreen({super.key});

  @override
  State<SplashgScreen> createState() => _SplashgScreenState();
}

class _SplashgScreenState extends State<SplashgScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return const OnbordingScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             SplashCustom.max()
            ],
          ),
        ),
      ),
    );
  }
}
