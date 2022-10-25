import 'package:exam_med/models/hospitals_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class HospitalsWidget extends StatefulWidget {
  List<HospitalsModel> hospital;
  HospitalsWidget({super.key, required this.hospital});

  @override
  State<HospitalsWidget> createState() => _HospitalsWidgetState();
}

class _HospitalsWidgetState extends State<HospitalsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity.w,
      height: MediaQuery.of(context).size.height * 0.625.h,
      child: ListView.builder(
        shrinkWrap: true,
        primary: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: widget.hospital.length,
        itemBuilder: (context, int index) {
          return HospitalInfo(widget.hospital[index]);
        },
      ),
    );
  }

  Widget HospitalInfo(HospitalsModel hospital) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                          image: AssetImage(hospital.imageName),
                          fit: BoxFit.cover)),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.240.h,
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.9)),
                  width: MediaQuery.of(context).size.width * 0.24.w,
                  height: MediaQuery.of(context).size.height * 0.037.h,
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      const Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.005),
                      Text(hospital.availableTime)
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 12,
                left: 126,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white.withOpacity(0.9)),
                  width: MediaQuery.of(context).size.width * 0.3.w,
                  height: MediaQuery.of(context).size.height * 0.037.h,
                  child: Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02.w),
                      const Icon(
                        Icons.history_toggle_off_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01.w),
                      Text(hospital.dataTime)
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.012.h),
          Text(
            hospital.placeAdres,
            style: GoogleFonts.familjenGrotesk(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: MyColors.C_393647,
              ),
            ),
          ),
          Text(
            hospital.placeAdresTwo,
            style: GoogleFonts.familjenGrotesk(
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: MyColors.C_6A6975,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
