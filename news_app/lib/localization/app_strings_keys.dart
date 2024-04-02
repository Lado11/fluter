import 'package:news_app/localization/app_strings.dart';

const String papary = "Papary";

const String onbordingFirstTitle = "Explore thousands of latest news";
const String onbordingTitleSecond = "Find news with better filters.";
const String onbordingTitleThird = "Bookmark, share & comments on news";

const String onbordingDescFirst =
    "Mauris urna velit, congue et aliquam non, imperdiet id massa. Etiam commodo interdum eros, eget hendrerit ex rhoncus in.";
const String onbordingDescSecond =
    "In sed massa sit amet nulla fringilla ultrices. Quisque vehicula gravida diam nec sodales. Donec pretium sem a justo egestas tincidunt.";
const String onbordingDescThird =
    "Quisque vitae finibus metus. Sed non placerat neque. Phasellus erat ante, auctor vel scelerisque vitae, facilisis sed nisi. ";

const String buttonSkip = "Skip";
const String buttonNext = "Next";
const String regButton = "Register now";
const String loginButton = "Login";


const String loginAppBar = "Create account";
const String loginTitleOne = "Welcome back!";
const String email = "Email";
const String password = "Password";
const String resendCode = "Resend Code";

extension StrinsLocalization on String {
  String get localized {
    return localizations.containsKey(this) ? localizations[this]! : this;
  }
}
