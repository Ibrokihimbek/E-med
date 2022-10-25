import 'package:exam_med/models/doctors_model.dart';
import 'package:exam_med/utils/app_routes.dart';
import 'package:exam_med/utils/images.dart';
import 'package:exam_med/widgets/appbar_widget.dart';
import 'package:exam_med/widgets/docotrs_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({super.key});

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  Future<List<DoctorsModel>> getData() async {
    List<DoctorsModel> url = DoctorsModel.doctors;

    var response = url;

    List<DoctorsModel> json = response;
    return json;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarWidget(),
              Padding(
                padding: const EdgeInsets.only(left: 20).r,
                child: Column(
                  children: [
                    Text(
                      'Recommended doctors for you',
                      style: GoogleFonts.familjenGrotesk(
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: MyColors.C_6A6975,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.024.h),
              FutureBuilder<List<DoctorsModel>>(
                future: getData(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<DoctorsModel>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      List<DoctorsModel> doctors = DoctorsModel.doctors;
                      return DoctorsWidget(doctors: doctors);
                    }
                  }
                  return const SizedBox(
                    child: Center(
                      child: Text(
                        "Nimdir xatolik bor",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
