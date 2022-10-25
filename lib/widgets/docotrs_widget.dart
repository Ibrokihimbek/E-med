import 'package:exam_med/models/doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_routes.dart';
import '../utils/colors.dart';

class DoctorsWidget extends StatefulWidget {
  List<DoctorsModel> doctors;
  DoctorsWidget({super.key, required this.doctors});

  @override
  State<DoctorsWidget> createState() => _DoctorsWidgetState();
}

class _DoctorsWidgetState extends State<DoctorsWidget> {
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
        itemCount: widget.doctors.length,
        itemBuilder: (context, int index) {
          return DoctorsWidget(widget.doctors[index]);
        },
      ),
    );
  }

  Widget DoctorsWidget(DoctorsModel doctorsModel) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10).r,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.15.w,
                    height: MediaQuery.of(context).size.height * 0.08.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(doctorsModel.imgageName),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorsModel.fullName,
                      style: GoogleFonts.familjenGrotesk(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      doctorsModel.nameOfProfession,
                      style: GoogleFonts.familjenGrotesk(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: MyColors.C_6A6975.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20).r,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    RoutName.doctor_info,
                    arguments: {'doctorInfo': doctorsModel},
                  );
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: MyColors.C_6A6975.withOpacity(0.5),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100).r,
          child: const Divider(thickness: 1),
        )
      ],
    );
  }
}
