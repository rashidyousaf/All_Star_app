import 'package:all_star/ui/views/auth/info/fifth_info_screen.dart';
import 'package:all_star/ui/views/auth/info/first_info_screen.dart';
import 'package:all_star/ui/views/auth/info/fourth_info_screen.dart';
import 'package:all_star/ui/views/auth/info/second_info_screen.dart';
import 'package:all_star/ui/views/auth/info/sixth_info_screen.dart';
import 'package:all_star/ui/views/auth/info/third_info_screen.dart';
import 'package:all_star/ui/views/auth/otp/otp_code_screen.dart';
import 'package:all_star/ui/views/auth/otp/otp_number_screen.dart';
import 'package:all_star/ui/views/auth/signin_screen.dart';
import 'package:all_star/ui/views/auth/signup_screen.dart';
import 'package:all_star/ui/views/get_plan/first_get_plan_screen.dart';
import 'package:all_star/ui/views/get_plan/second_get_plan_screen.dart';
import 'package:all_star/ui/views/help/help_screen.dart';
import 'package:all_star/ui/views/home_screen.dart';
import 'package:all_star/ui/views/marriage_portal/chat/chat_screen.dart';
import 'package:all_star/ui/views/marriage_portal/marriage_home_screen/marriage_home_screen.dart';
import 'package:all_star/ui/views/marriage_portal/message/messages_screen.dart';
import 'package:all_star/ui/views/marriage_portal/profile_screen/marriage_profile_screen.dart';
import 'package:all_star/ui/views/marriage_portal/upload_document/upload_document_screen.dart';
import 'package:all_star/ui/views/notifications/notifications_screen.dart';
import 'package:all_star/ui/views/offers/offer_screen.dart';
import 'package:all_star/ui/views/payment/add_card_screen.dart';
import 'package:all_star/ui/views/payment/payment_screen.dart';
import 'package:all_star/ui/views/plan_screen.dart';
import 'package:all_star/ui/views/setting/settings_screen.dart';
import 'package:all_star/ui/views/splash_screen.dart';
import 'package:all_star/ui/views/terms_conditions/terms_and_conditions_screen.dart';

import '../consts/consts.dart';
import '../ui/views/bottom_nav_screen.dart';
import '../ui/views/get_plan/third_get_plan_screen.dart';
import '../ui/views/marriage_portal/chat/chat_splash_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case "/homeScreen":
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case "/signinScreen":
        return MaterialPageRoute(builder: (context) => const SigninScreen());
      case "/signupScreen":
        return MaterialPageRoute(builder: (context) => const SignupScreen());
      case "/firstInfoScreen":
        return MaterialPageRoute(builder: (context) => const FirstInfoScreen());
      case "/secondInfoScreen":
        return MaterialPageRoute(builder: (context) => const SeconInfoScreen());
      case "/thirdInfoScreen":
        return MaterialPageRoute(builder: (context) => const ThirdInfoScreen());
      case "/fourthInfoScreen":
        return MaterialPageRoute(builder: (context) => const FouthInfoScreen());
      case "/fifthInfoScreen":
        return MaterialPageRoute(builder: (context) => const FifthInfoScreen());
      case "/sixthInfoScreen":
        return MaterialPageRoute(builder: (context) => const SixthInfoScreen());
      case "/planScreen":
        return MaterialPageRoute(builder: (context) => const PlanScreen());
      case "/paymentScreen":
        return MaterialPageRoute(builder: (context) => const PaymentScreen());
      case "/addCardScreen":
        return MaterialPageRoute(builder: (context) => const AddCardScreen());
      case "/firstGetPlanScreen":
        return MaterialPageRoute(
            builder: (context) => const FirsGetPlanScreen());
      case "/SecondGetPlanScreen":
        return MaterialPageRoute(
            builder: (context) => const SecondGetPlanScreen());
      case "/thirdGetPlanScreen":
        return MaterialPageRoute(
            builder: (context) => const ThirdGetPlanScreen());
      case "/offerScreen":
        return MaterialPageRoute(builder: (context) => const OfferScreen());
      case "/notificationsScreen":
        return MaterialPageRoute(
            builder: (context) => const NotificationsScreen());

      case "/settingsScreen":
        return MaterialPageRoute(builder: (context) => const SettingsScreen());
      case "/privacyScreen":
        return MaterialPageRoute(builder: (context) => const PrivacyScreen());
      case "/helpScreen":
        return MaterialPageRoute(builder: (context) => const HelpScreen());
      case "/otpNumberScreen":
        return MaterialPageRoute(builder: (context) => const OtpNumberScreen());
      case "/otpCodeScreen":
        return MaterialPageRoute(builder: (context) => const OtpCodeScreen());
      case "/bottomNavScreen":
        return MaterialPageRoute(builder: (context) => const BottomNavScreen());
      // this section for marriage portal
      case "/uploadDocumentScreen":
        return MaterialPageRoute(
            builder: (context) => const UploadDocumentScreen());
      case "/marriageHomeScreen":
        return MaterialPageRoute(
            builder: (context) => const MarriageHomeScreen());
      case "/messagesScreen":
        return MaterialPageRoute(builder: (context) => const MessagesScreen());
      case "/chatSplashScreen":
        return MaterialPageRoute(
            builder: (context) => const ChatSplashScreen());
      case "/chatScreen":
        return MaterialPageRoute(builder: (context) => const ChatScreen());
      case "/marriageProfileScreen":
        return MaterialPageRoute(
            builder: (context) => const MarriageProfileScreen());
    }
    return null;
  }
}
