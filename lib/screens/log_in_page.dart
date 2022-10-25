import 'package:exam_med/utils/colors.dart';
import 'package:exam_med/widgets/appbar_widget_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_routes.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_field.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: _key,
            child: Column(
              children: [
                AppbarWidgetTwo(pageName: 'Log In'),
                SizedBox(height: MediaQuery.of(context).size.height * 0.024.h),
                Container(
                  width: MediaQuery.of(context).size.width * 1.w,
                  child: Text(
                    'Log in to your account',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.familjenGrotesk(
                      textStyle: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: MyColors.C_6A6975,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20).r,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.032.h),
                      FormField('Phone number'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01.h),
                      TextFieldWidget(hinttext: '+998 __ ___ __ __'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      FormField('Your password'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01.h),
                      TextFieldWidget(hinttext: 'Enter your password...'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      ButtonWidget(
                        buttonName: 'Continue',
                        onTap: () {
                          if (_key.currentState!.validate()) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            saveLogin(context);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget FormField(String word) {
    return Text(
      word,
      style: GoogleFonts.familjenGrotesk(
        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  void saveLogin(context) async {
    SharedPreferences _pref = await SharedPreferences.getInstance();
    _pref.setBool("isLoggedIn", true);

    Navigator.pushNamedAndRemoveUntil(context, RoutName.bottomNaviagationBar, (route) => false);
  }
}
