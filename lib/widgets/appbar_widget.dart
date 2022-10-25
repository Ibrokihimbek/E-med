import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';
import '../utils/images.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * 0.025.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2.w,
              height: MediaQuery.of(context).size.height * 0.04.h,
              child: Image.asset(MyImages.image_avatar),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4.w,
              height: MediaQuery.of(context).size.height * 0.05.h,
              child: Image.asset(
                MyImages.image_logo,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2.w,
              height: MediaQuery.of(context).size.height * 0.04.h,
              child: Image.asset(MyImages.image_filter),
            ),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.016.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20).r,
          child: TextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.text,
            obscureText: false,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 10).r,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, size: 24.sp),
              ),
              hintText: 'Search doctors by name or position',
              hintStyle: GoogleFonts.familjenGrotesk(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17.sp,
                  color: MyColors.C_6A6975.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        const Divider(thickness: 1.5),
      ],
    );
  }
}
