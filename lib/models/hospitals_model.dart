import 'package:exam_med/utils/images.dart';

class HospitalsModel {
  String imageName;
  String placeAdres;
  String placeAdresTwo;
  String availableTime;
  String dataTime;

  HospitalsModel({
    required this.imageName,
    required this.placeAdres,
    required this.availableTime,
    required this.placeAdresTwo,
    required this.dataTime,
  });

  static List<HospitalsModel> hospitals = [
    HospitalsModel(
      imageName: MyImages.image_hospital_one,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_two,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_three,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_four,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_five,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_six,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_seven,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
    HospitalsModel(
      imageName: MyImages.image_hospital_eight,
      placeAdres: 'Uzbekistan New International Clinic',
      availableTime: 'Mon - Sat',
      placeAdresTwo: 'Tashkent, Shaykhontokhur, Navoi street',
      dataTime: '09:00 - 18:00',
    ),
  ];
}
