import 'package:flutter/material.dart';
import '../../auth_screens/index.dart';
import '../../../widgets/index.dart';
import '../../../../localization/index.dart';
import '../../../../resources/index.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        shape: Border(bottom: BorderSide(color: Color(0xFFDADDE5), width: 2)),
        leading: Icon(Icons.arrow_back),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) {
                    return LoginScreen();
                  }));
            },
            child: Text(loginButton, style: loginAppBarTitle),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: EdgeInsets.only(top: 32, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTileWidget(
                      title: "Forget your password",
                      subTitle: "what! you ",
                      description:
                          "Don’t worry, we have way to reset your password. enter your email address in the following field & click Send request.",
                    )
                  ],
                )),
            CustomTextField(
              controller: emailController,
              hintText: 'Email Address',
              label: 'Email',
              prefixIconData: Icons.email_outlined,
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: ElevatedButtonCustom.primary(
                  title: "Send request",
                  onTab: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return ResetPasswordScreen();
                    }));
                  },
                  IconDy: Icons.arrow_forward),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomDivider(),
                CustomOutlinedButtonState.otlined(
                    title: "Sign in with Google",
                    onTab: () {},
                    IconDy: Icons.g_mobiledata),
                SizedBox(
                  height: 20,
                ),
                CustomOutlinedButtonState.otlined(
                    title: "Sign in with Facebook",
                    onTab: () {},
                    IconDy: Icons.facebook),
              ],
            )
          ],
        ),
      )),
    );
  }
}
