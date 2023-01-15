import 'package:get/get.dart';
import 'package:shelter/ui/views/auth/log_in.dart';
import 'package:shelter/ui/views/auth/sign_up.dart';
import 'package:shelter/ui/views/bottom_controller/details_screen.dart';
import 'package:shelter/ui/views/bottom_controller/pages/nav_add_last_step.dart';
import 'package:shelter/ui/views/bottom_controller/pages/nav_home.dart';
import 'package:shelter/ui/views/bottom_controller/search_screen.dart';
import 'package:shelter/ui/views/bottom_controller/see_all.dart';

import 'package:shelter/ui/views/drawer_pages/faq.dart';
import 'package:shelter/ui/views/drawer_pages/how_to_use.dart';
import 'package:shelter/ui/views/drawer_pages/privacy.dart';
import 'package:shelter/ui/views/drawer_pages/profile.dart';
import 'package:shelter/ui/views/drawer_pages/setting.dart';
import 'package:shelter/ui/views/drawer_pages/support.dart';
import 'package:shelter/ui/views/main_home_screen.dart';
import 'package:shelter/ui/views/onboarding_screen.dart';
import 'package:shelter/ui/views/privacy_policy.dart';
import 'package:shelter/ui/views/splash_screen.dart';
import 'package:shelter/ui/views/user_form.dart';



const String splash = '/splash-screen';
const String onboarding = '/onboarding-screen';
const String signUp = '/sign-up-screen';
const String login = '/log-in-screen';
const String userform = '/user-form-screen';
const String privacyPolicy = '/privacy-policy-screen';
const String mainhomescreen = '/main-home-screen';
const String support = '/support-screen';
const String privacy = '/privacy-screen';
const String faq = '/faq-screen';
const String howtouse = '/how-to-use-screen';
const String setting = '/setting-screen';
const String searchScreen = '/search-screen';
const String seeAllScreen = '/see-all-screen';
const String detailsScreen = '/detail-screen';
const String profileScreen = '/profile-screen';
const String navAddLastStep = '/navAddLastStep-screen';
//  control our page route flow

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => splashScreen(),
  ),
  GetPage(
    name: onboarding,
    page: () => onboardingScreen(),
  ),
  GetPage(
    name: signUp,
    page: () => SignUp(),
  ),
  GetPage(
    name: login,
    page: () => loginScreen(),
  ),
  GetPage(
    name: userform,
    page: () => userformScreen(),
  ),
  GetPage(
    name: privacyPolicy,
    page: () => privacypolicyScreen(),
  ),
  GetPage(
    name: mainhomescreen,
    page: () => MainHomeScreen(),
  ),

  GetPage(
    name: support,
    page: () => SupportScreen(),
  ),

  GetPage(
    name: privacy,
    page: () => PrivacyScreen(),
  ),

  GetPage(
    name: faq,
    page: () => FaqScreen(),
  ),

  GetPage(
    name: howtouse,
    page: () => HowToUseScreen(),
  ),
  GetPage(
    name: setting,
    page: () => SettingScreen(),
  ),
  GetPage(
    name: searchScreen,
    page: () => SearchScreen(),
  ),
  GetPage(
    name: seeAllScreen,
    page: () {
      SeeAll _seeAll = Get.arguments;
      return _seeAll;
    },
  ),
   GetPage(
    name: detailsScreen,
    page: () {
      DetailsSCreen _detailsSCreen = Get.arguments;
      return _detailsSCreen;
    },
  ),
   GetPage(
    name: profileScreen,
    page: () => UserProfile(),
  ),
  GetPage(
    name: navAddLastStep,
    page: () {
      NavAddLastStep _addLastStep = Get.arguments;
      return _addLastStep;
    },
  ),
];
