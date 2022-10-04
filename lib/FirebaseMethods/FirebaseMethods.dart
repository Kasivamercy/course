import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseMethods {
  Future<bool> CheckuserValidforthecourse(String coll) async {
    String id = await FirebaseAuth.instance.currentUser!.uid;

    var data = await FirebaseFirestore.instance
        .collection("Courses")
        .doc(coll)
        .snapshots();
    Subjects coursesresult = await data.map(
            (event) => Subjects.fromJson(event.data() as Map<String, dynamic>))
        as Subjects;

    var data2 = await FirebaseFirestore.instance
        .collection("Students")
        .doc(id)
        .snapshots();

    Subjects usersresult = await data.map(
            (event) => Subjects.fromJson(event.data() as Map<String, dynamic>))
        as Subjects;

    if (coursesresult.Biology > usersresult.Biology) {
      return false;
    } else if (coursesresult.Mathematics > usersresult.Mathematics) {
      return false;
    } else if (coursesresult.Chemistry > usersresult.Chemistry) {
      return false;
    } else if (coursesresult.English > usersresult.English) {
      return false;
    } else if (coursesresult.Cre > usersresult.Cre) {
      return false;
    } else if (coursesresult.Geography > usersresult.Geography) {
      return false;
    } else if (coursesresult.MeanGrade > usersresult.MeanGrade) {
      return false;
    } else if (coursesresult.Business > usersresult.Business) {
      return false;
    } else if (coursesresult.Kiswahili > usersresult.Kiswahili) {
      return false;
    } else if (coursesresult.History > usersresult.History) {
      return false;
    } else {
      return true;
    }
  }
}

class Subjects {
  late double Biology;
  late double Business;
  late double Chemistry;
  late double ComputerStudies;
  late double Cre;
  late double English;
  late double Geography;
  late double History;
  late double Kiswahili;
  late double Mathematics;
  late double MeanGrade;
  late double Physics;
  Subjects(
      double Bio,
      double Busin,
      double Chem,
      double Comp,
      double cre,
      double Eng,
      double Geog,
      double His,
      double Kiswa,
      double Math,
      double Mean,
      double Phy) {
    Biology = Bio;
    Business = Busin;
    Chemistry = Chem;
    ComputerStudies = Comp;
    Cre = cre;
    English = Eng;
    Geography = Geog;
    History = His;
    Kiswahili = Kiswa;
    Mathematics = Math;
    MeanGrade = Mean;
    Physics = Phy;
  }

  factory Subjects.fromJson(Map<String, dynamic> json) {
    return Subjects(
        json["Biology"] ?? 0,
        json["Business"] ?? 0,
        json["Chemistry"] ?? 0,
        json["ComputerStudies"] ?? 0,
        json["Cre"] ?? 0,
        json["English"] ?? 0,
        json["Geography"] ?? 0,
        json["History"] ?? 0,
        json["Kiswahili"] ?? 0,
        json["Mathematics"] ?? 0,
        json["MeanGrade"] ?? 0,
        json["Physics"] ?? 0);
  }
}
