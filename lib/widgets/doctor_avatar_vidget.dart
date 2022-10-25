import 'package:exam_med/models/doctors_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorAvatarWidget extends StatefulWidget {
  DoctorsModel doctor;
  DoctorAvatarWidget({super.key, required this.doctor});

  @override
  State<DoctorAvatarWidget> createState() => _DoctorAvatarWidgetState();
}

class _DoctorAvatarWidgetState extends State<DoctorAvatarWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5.w,
          height: MediaQuery.of(context).size.height * 0.3.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(widget.doctor.imgageName),
                  fit: BoxFit.contain)),
        ),
        Text(
          widget.doctor.fullName,
          style: GoogleFonts.familjenGrotesk(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Text(
          widget.doctor.nameOfProfession,
          style: GoogleFonts.familjenGrotesk(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: MyColors.C_393647,
            ),
          ),
        ),
      ],
    );
  }
}
