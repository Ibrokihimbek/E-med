import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class AppbarWidgetTwo extends StatefulWidget {
  String pageName;
  AppbarWidgetTwo({super.key, required this.pageName});

  @override
  State<AppbarWidgetTwo> createState() => _AppbarWidgetTwoState();
}

class _AppbarWidgetTwoState extends State<AppbarWidgetTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.023.h),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.02.w),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_new,
                color: MyColors.C_007AFF,
                size: 22.sp,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02.w),
            Text(
              'Back',
              style: GoogleFonts.familjenGrotesk(
                textStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: MyColors.C_007AFF,
                ),
              ),
            ),
            SizeBox(),
            Text(
              widget.pageName,
              style: GoogleFonts.familjenGrotesk(
                textStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.008.h),
        const Divider(thickness: 1.5),
      ],
    );
  }

  SizeBox() {
    if (widget.pageName == 'Log In' || widget.pageName == 'Sign Up') {
      return SizedBox(width: MediaQuery.of(context).size.width * 0.18.w);
    } else {
      return SizedBox(width: MediaQuery.of(context).size.width * 0.08.w);
    }
  }
}
