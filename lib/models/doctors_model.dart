import 'package:exam_med/utils/images.dart';

class DoctorsModel {
  String fullName;
  String nameOfProfession;
  String placeOfWork;
  String workLocation;
  String avilableTime;
  String imgageName;

  DoctorsModel({
    required this.fullName,
    required this.nameOfProfession,
    required this.placeOfWork,
    required this.workLocation,
    required this.avilableTime,
    required this.imgageName,
  });

  static List<DoctorsModel> doctors = [
    DoctorsModel(
        fullName: 'Salohiddinov Sardor',
        nameOfProfession: 'Pediatric Pulmonolog',
        placeOfWork: 'Padiatric hospital №14',
        workLocation:
            "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
        avilableTime: 'Monday - Saturday\n10:00 - 16:00',
        imgageName: MyImages.image_person_four),
    DoctorsModel(
        fullName: 'Qodirov Botir',
        nameOfProfession: 'Anesthesiology',
        placeOfWork: 'Anesthesiolog hospital №20',
        workLocation:
            'Olmazor district, st. Alisher Navoiy, 19 Tashkent, 100130',
        avilableTime: 'Tuesday - Sunday\n10:00 - 17:00',
        imgageName: MyImages.image_person_two),
    DoctorsModel(
        fullName: "Abdullajonov Adham",
        nameOfProfession: 'Pediatric Pulmonolog',
        placeOfWork: 'Padiatric hospital №14',
        workLocation:
            "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
        avilableTime: 'Monday - Saturday\n10:00 - 16:00',
        imgageName: MyImages.image_person_eight),
    DoctorsModel(
        fullName: 'Mavlonov Boburjon',
        nameOfProfession: 'Pediatric Pulmonolog',
        placeOfWork: 'Pediatric hospital №14',
        workLocation:
            'Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128',
        avilableTime: 'Monday - Saturday\n10:00 - 16:00',
        imgageName: MyImages.image_person_one),
    DoctorsModel(
        fullName: 'Usmonov Dilshod',
        nameOfProfession: 'Anesthesiology',
        placeOfWork: 'Anesthesiolog hospital №20',
        workLocation:
            'Olmazor district, st. Alisher Navoiy, 19 Tashkent, 100130',
        avilableTime: 'Tuesday - Sunday\n10:00 - 17:00',
        imgageName: MyImages.image_person_two),
    DoctorsModel(
        fullName: 'Akramov Burhoniddin',
        nameOfProfession: 'Allergy & Immunology',
        placeOfWork: 'Immunolog hospital №17',
        workLocation: "G'ofurg'ulom district, st. Novza, 15 Tashkent, 200130",
        avilableTime: 'Wednesday - Friday\n09:00 - 17:00',
        imgageName: MyImages.image_person_three),
    DoctorsModel(
        fullName: 'Iminoxunov Nuruddin',
        nameOfProfession: 'Pediatric Pulmonolog',
        placeOfWork: 'Padiatric hospital №14',
        workLocation:
            "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
        avilableTime: 'Monday - Saturday\n10:00 - 16:00',
        imgageName: MyImages.image_person_four),
    DoctorsModel(
        fullName: "Ma'murov Abbos",
        nameOfProfession: 'Endocrinology',
        placeOfWork: 'Endocrinolog hospital №22',
        workLocation: "Chilonzor district, st. Mevazor, 18 Tashkent, 100128",
        avilableTime: 'Tuesday - Friday\n08:00 - 16:00',
        imgageName: MyImages.image_person_five),
    DoctorsModel(
        fullName: "Isoqov Husan",
        nameOfProfession: 'Pediatric Pulmonolog',
        placeOfWork: 'Padiatric hospital №14',
        workLocation:
            "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
        avilableTime: 'Monday - Saturday\n10:00 - 16:00',
        imgageName: MyImages.image_person_six),
    DoctorsModel(
        fullName: "Abbosov Farruh",
        nameOfProfession: 'Allergy & Immunology',
        placeOfWork: 'Immunolog hospital №21',
        workLocation:
            "Yakka Saroy district, st. Shota Rustavelli, 16 Tashkent, 200130",
        avilableTime: 'Wednesday - Friday\n09:00 - 17:00',
        imgageName: MyImages.image_person_seven),
    DoctorsModel(
        fullName: "Abdullajonov Dilmurod",
        nameOfProfession: 'Pediatric Pulmonolog',
        placeOfWork: 'Padiatric hospital №14',
        workLocation:
            "Shaykhantakhur district, st. Zulfiyahonim, 18 Tashkent, 100128",
        avilableTime: 'Monday - Saturday\n10:00 - 16:00',
        imgageName: MyImages.image_person_eight),
  ];
}
