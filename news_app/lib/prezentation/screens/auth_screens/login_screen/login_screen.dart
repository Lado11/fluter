import 'package:flutter/material.dart';
import '../../auth_screens/index.dart';
import '../../../widgets/index.dart';
import '../../../../localization/index.dart';
import '../../../../resources/index.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, this.label, this.hinText});

  final String? hinText;
  final String? label;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          shape: Border(bottom: BorderSide(color: Color(0xFFDADDE5), width: 2)),
          // leading: Icon(Icons.arrow_back),
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
                      padding: const EdgeInsets.all(20.0),
                    // child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 40, bottom: 32),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const TitleTileWidget(
                                      title: "Login",
                                      subTitle: "Welcome back!",
                                    ),
                                  ],
                                )),
                            CustomTextField(
                              controller: emailController,
                              hintText: 'Email Address',
                              label: 'Email',
                              prefixIconData: Icons.email_outlined,
                            ),
                            const SizedBox(height: 16.0),
                            CustomTextField(
                              controller: passwordController,
                              hintText: 'Password',
                              label: 'Password',
                              prefixIconData: Icons.lock,
                              isSecure: true,
                              additionalTitle: 'Forget Password',
                              onAdditional: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return ForgotPasswordScreen();
                                    }));
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: ElevatedButtonCustom.primary(
                                  title: "Sign In",
                                  onTab: () {

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
                          ]),

                    // ),
                    ),

            ),
          );

  }
}
