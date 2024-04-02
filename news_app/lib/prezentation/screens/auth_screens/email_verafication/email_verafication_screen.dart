import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import '../../../widgets/index.dart';
import '../../../../localization/index.dart';
import '../../../../resources/index.dart';

class EmailVeraficationScreen extends StatefulWidget {
  const EmailVeraficationScreen({super.key});

  @override
  State<EmailVeraficationScreen> createState() =>
      _EmailVeraficationScreenState();
}

class _EmailVeraficationScreenState extends State<EmailVeraficationScreen> {
  bool _onEditing = true;
  String? _code;

  @override
  build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(bottom: BorderSide(color: Color(0xFFDADDE5), width: 2)),
          leading: Icon(Icons.arrow_back),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text(resendCode, style: loginAppBarTitle),
            )
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 80),
                  child:
                      Image(image: AssetImage("assets/images/security1 1.png")),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 52, bottom: 32),
                  child: TitleTileWidget(
                    description:
                        "Please enter the 6 digit verification code sent to Kevin.gi@gmail.com  confirm your email address",
                    title: "Verified your email",
                  ),
                ),
                VerificationCode(
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Theme.of(context).primaryColor),
                  keyboardType: TextInputType.number,
                  underlineColor: Colors.amber,
                  // If this is null it will use primaryColor: Colors.red from Theme
                  length: 4,
                  cursorColor: Colors.blue,
                  // If this is null it will default to the ambient
                  // clearAll is NOT required, you can delete it
                  // takes any widget, so you can implement your design
                  clearAll: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'clear all',
                      style: TextStyle(
                          fontSize: 14.0,
                          decoration: TextDecoration.underline,
                          color: Colors.blue[700]),
                    ),
                  ),
                  margin: const EdgeInsets.all(12),
                  onCompleted: (String value) {
                    setState(() {
                      _code = value;
                    });
                  },
                  onEditing: (bool value) {
                    setState(() {
                      _onEditing = value;
                    });
                    if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: ElevatedButtonCustom.primary(
                          title: "Verified me", onTab: () {}),
                    ),
                  ],
                )
              ],
            ),
          )),
        ));
  }
}
