import 'package:exam_med/models/doctors_model.dart';
import 'package:exam_med/widgets/appbar_widget.dart';
import 'package:exam_med/widgets/appbar_widget_2.dart';
import 'package:exam_med/widgets/button_widget.dart';
import 'package:exam_med/widgets/doctor_avatar_vidget.dart';
import 'package:exam_med/widgets/doctor_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorInfoPage extends StatefulWidget {
  DoctorsModel doctor;
  DoctorInfoPage({super.key, required this.doctor});

  @override
  State<DoctorInfoPage> createState() => _DoctorInfoPageState();
}

class _DoctorInfoPageState extends State<DoctorInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarWidgetTwo(pageName: widget.doctor.fullName),
              Center(
                child: DoctorAvatarWidget(doctor: widget.doctor),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Column(
                  children: [
                    DoctorInfoWidget(
                      doctor: widget.doctor,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04.h),
                    ButtonWidget(
                      buttonName: 'Book an appointment',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
