import 'package:flutter/material.dart';
import 'package:leofacil/src/presentation/login_page/View/login_page.dart';
import 'package:leofacil/src/presentation/sign_up_page/View/sign_up_page.dart';
import 'package:leofacil/src/presentation/welcome_page/View/welcome_page.dart';
import 'package:leofacil/src/tabs/profile_tab/profile_tab.dart';
import 'package:leofacil/src/tabs/tabs_page.dart';

//Pages

final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage(),
  'profile': (BuildContext context) => const ProfileTab(),
};