import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class ButtonWidget extends StatefulWidget {
  String buttonName;
  VoidCallback onTap;
  ButtonWidget({super.key, required this.buttonName, required this.onTap});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(56.r),
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: Colors.grey, width: 1),
          color: MyColors.C_007AFF,
        ),
        child: Center(
          child: Text(
            widget.buttonName,
            style: GoogleFonts.familjenGrotesk(
              textStyle: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
