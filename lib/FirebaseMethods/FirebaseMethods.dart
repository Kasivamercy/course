import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseMethods {
  Future<bool> CheckuserValidforthecourse(String coll) async {
    String id = FirebaseAuth.instance.currentUser!.uid;

    var data =
        await FirebaseFirestore.instance.collection("Courses").doc(coll).get();
    Subjects coursesresult =
        Subjects.fromJson(data.data() as Map<String, dynamic>);

    var studentsdata =
        await FirebaseFirestore.instance.collection("Students").doc(id).get();

    Subjects usersresult =
        Subjects.fromJson(studentsdata.data() as Map<String, dynamic>);

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
  late int Biology;
  late int Business;
  late int Chemistry;
  late int ComputerStudies;
  late int Cre;
  late int English;
  late int Geography;
  late int History;
  late int Kiswahili;
  late int Mathematics;
  late int MeanGrade;
  late int Physics;
  Subjects(int Bio, int Busin, int Chem, int Comp, int cre, int Eng, int Geog,
      int His, int Kiswa, int Math, int Mean, int Phy) {
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
        json["Mean Grade"] ?? 0,
        json["Physics"] ?? 0);
  }
}
