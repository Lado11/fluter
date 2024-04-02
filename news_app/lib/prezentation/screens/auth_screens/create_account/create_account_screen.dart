import 'package:flutter/material.dart';
import '../../auth_screens/index.dart';
import '../../../widgets/index.dart';
import '../../../../localization/index.dart';
import '../../../../resources/index.dart';

class CreateAccountScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final conmirmPasswordController = TextEditingController();

  // This widget is the root of your application.
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
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return LoginScreen();
              }));
            },
            child: Text(loginButton, style: loginAppBarTitle),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, bottom: 32),
                  child: const TitleTileWidget(
                    title: "Create account",
                    subTitle: "Hello!",
                  ),
                ),
                CustomTextField(
                  controller: nameController,
                  hintText: 'Full name',
                  label: 'Name',
                  prefixIconData: Icons.person_2_outlined,
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: emailController,
                  hintText: 'Email Address',
                  label: 'Email',
                  prefixIconData: Icons.email_outlined,
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: passwordController,
                  hintText: 'Create password',
                  label: 'Password',
                  prefixIconData: Icons.lock_outline_rounded,
                ),
                const SizedBox(height: 16.0),
                CustomTextField(
                  controller: conmirmPasswordController,
                  hintText: 'Confirm Password',
                  label: 'Confirm Password',
                  prefixIconData: Icons.lock_outline_rounded,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: ElevatedButtonCustom.primary(
                      title: "Create Account",
                      onTab: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return EmailVeraficationScreen();
                        }));
                      },
                      IconDy: Icons.arrow_forward),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 40), child: CustomDivider()),
                Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: CustomOutlinedButtonState.otlined(
                        title: "Create acccount with Google",
                        onTab: () {},
                        IconDy: Icons.g_mobiledata))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
