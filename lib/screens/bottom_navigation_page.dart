import 'package:exam_med/screens/doctors_page.dart';
import 'package:exam_med/screens/hospitals_page.dart';
import 'package:exam_med/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  List<Widget> _pages = [
    Container(
      child: Center(
        child: Icon(
          Icons.home,
          size: 70,
          color: Colors.black,
        ),
      ),
    ),
    Container(
      child: Center(
        child: Icon(
          Icons.medical_information_outlined,
          size: 70,
          color: Colors.black,
        ),
      ),
    ),
    DoctorPage(),
    HospitalsPage(),
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(
            () {
              currentPageIndex = index;
            },
          );
        },
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Image.asset(MyImages.image_home),
                width: 21.w,
                height: 21.h,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Image.asset(MyImages.image_syringe),
                width: 21.w,
                height: 21.h,
              ),
              label: 'Treatments'),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Image.asset(MyImages.image_doctor_fill),
                width: 21.w,
                height: 21.h,
              ),
              label: 'Doctors'),
          BottomNavigationBarItem(
              icon: SizedBox(
                child: Image.asset(MyImages.image_hospital),
                width: 21.w,
                height: 21.h,
              ),
              label: 'Hospital'),
        ],
      ),
    );
  }
}
