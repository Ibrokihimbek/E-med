import 'package:exam_med/screens/bottom_navigation_page.dart';
import 'package:exam_med/screens/doctor_info_page.dart';
import 'package:exam_med/screens/doctors_page.dart';
import 'package:exam_med/screens/hospitals_page.dart';
import 'package:exam_med/screens/log_in_page.dart';
import 'package:exam_med/screens/sign_up_page.dart';
import 'package:exam_med/screens/splash_page.dart';
import 'package:flutter/material.dart';

abstract class RoutName {
  static const splash = 'splash';
  static const signUp = 'sign_up';
  static const logIn = 'log_in';
  static const doctor = 'doctor';
  static const bottomNaviagationBar = 'bottom_navigation_bar';
  static const doctor_info = 'doctor_info';
  static const hospitals = 'hospitals';
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutName.signUp:
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case RoutName.logIn:
        return MaterialPageRoute(builder: (_) => LogInPage());
      case RoutName.splash:
        return MaterialPageRoute(builder: (_) => Splash_Page());
      case RoutName.doctor:
        return MaterialPageRoute(builder: (_) => DoctorPage());
      case RoutName.bottomNaviagationBar:
        return MaterialPageRoute(builder: (_) => BottomNavigationPage());
      case RoutName.doctor_info:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
          builder: (_) => DoctorInfoPage(
            doctor: args['doctorInfo'],
          ),
        );
      case RoutName.hospitals:
        return MaterialPageRoute(builder: (_) => HospitalsPage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }
}
