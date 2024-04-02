import 'package:flutter/material.dart';
import '../../auth_screens/index.dart';
import '../../../widgets/index.dart';
import '../../../../localization/index.dart';
import '../../../../resources/index.dart';

class ResetPasswordScreen extends StatelessWidget {
  final passwordController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: Border(bottom: BorderSide(color: Color(0xFFDADDE5), width: 2)),
        title: Transform(
          // you can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-30.0, 0.0, 0.0),
          child: SplashCustom.min(),
        ),
        centerTitle: false,
        titleSpacing: 0.0,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) {
                    return CreateAccountScreen();
                  }));
            },
            child: Text(loginAppBar, style: loginAppBarTitle),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child:
                    Image(image: AssetImage("assets/images/security 3 1.png")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 52, bottom: 32),
                child: TitleTileWidget(
                  title: "Reset password",
                ),
              ),
              CustomTextField(
                controller: passwordController,
                hintText: 'Create password',
                label: 'Password',
                prefixIconData: Icons.lock,
                isSecure: true,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                controller: passwordController,
                hintText: 'Confirm password',
                label: 'Confirm password',
                prefixIconData: Icons.lock,
                isSecure: true,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: ElevatedButtonCustom.primary(
                        title: "Reset Password", onTab: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) {
                            return CreateAccountScreen();
                          }));
                    }),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
