import 'package:exam_med/utils/app_routes.dart';
import 'package:exam_med/utils/colors.dart';
import 'package:exam_med/widgets/appbar_widget_2.dart';
import 'package:exam_med/widgets/button_widget.dart';
import 'package:exam_med/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  bool isPas = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                AppbarWidgetTwo(
                  pageName: 'Sign Up',
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.025.h),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9.w,
                  child: Text(
                    'Sign up in order to get a full access to the system',
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
                      FormField('Full name'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01.h),
                      TextFieldWidget(hinttext: 'Enter your full name...'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      FormField('Phone number'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01.h),
                      TextFieldWidget(hinttext: 'Enter your phone number...'),
                      Padding(
                        padding: const EdgeInsets.only(left: 16).r,
                        child: FormField(
                            'We will send confirmation code to this number'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      FormField('Create password'),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01.h),
                      TextFieldWidget(hinttext: 'Create your new password...'),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      ButtonWidget(
                        buttonName: 'Continue',
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            FocusManager.instance.primaryFocus?.unfocus();
                            Navigator.pushNamed(context, RoutName.logIn);
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
          fontSize: word == 'We will send confirmation code to this number'
              ? 14.sp
              : 18.sp,
          fontWeight: FontWeight.w500,
          color: word == 'We will send confirmation code to this number'
              ? MyColors.C_6A6975
              : Colors.black,
        ),
      ),
    );
  }
}
