import 'package:exam_med/models/doctors_model.dart';
import 'package:exam_med/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorInfoWidget extends StatefulWidget {
  DoctorsModel doctor;
  DoctorInfoWidget({super.key, required this.doctor});

  @override
  State<DoctorInfoWidget> createState() => _DoctorInfoWidgetState();
}

class _DoctorInfoWidgetState extends State<DoctorInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Info('Place of work', widget.doctor.placeOfWork),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025.h),
        Info('Work location', widget.doctor.workLocation),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025.h),
        Info('Available', widget.doctor.avilableTime),
        SizedBox(height: MediaQuery.of(context).size.height * 0.025.h),
        Text(
          'Rating',
          style: GoogleFonts.familjenGrotesk(
            textStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16.sp,
              color: MyColors.C_6A6975.withOpacity(0.5),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.01),
        Row(
          children: [
            Image.asset(MyImages.image_start_gold),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Image.asset(MyImages.image_start_gold),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Image.asset(MyImages.image_start_gold),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Image.asset(MyImages.image_start_gold),
            SizedBox(width: MediaQuery.of(context).size.width * 0.01),
            Image.asset(MyImages.image_star)
          ],
        )
      ],
    );
  }

  Widget Info(String title, String info) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.familjenGrotesk(
            textStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16.sp,
              color: MyColors.C_6A6975.withOpacity(0.5),
            ),
          ),
        ),
        Text(
          info,
          style: GoogleFonts.familjenGrotesk(
            textStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              color: MyColors.C_201D30,
            ),
          ),
        ),
      ],
    );
  }
}
