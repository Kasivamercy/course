// import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course/GradeHandler.dart';
import 'package:course/courses.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // final mathsController =TextEditingController()
  // Initial Selected Value
  String dropdownvalue = 'A';
  String mathsvalue = 'A';
  String englishvalue = 'A';
  String kiswahilivalue = 'A';
  String chemistryvalue = 'A';
  String biologyvalue = 'A';
  String compvalue = 'A';
  String historyvalue = 'A';
  String businessvalue = 'A';
  String physicsvalue = 'A';
  String crevalue = 'A';
  String geographyvalue = 'A';
  String meanvalue = 'A';
  String homevalue = 'A';

  int math = 12;
  int eng = 12;
  int cre = 12;
  int kisw = 12;
  int geo = 12;
  int home = 12;
  int busi = 12;
  int hist = 12;
  int bio = 12;
  int phy = 12;
  int comp = 12;

  var grade = [12, 11, 10];

  // List of items in our dropdown menu
  var items = [
    'A',
    'A-',
    'B+',
    'B',
    'B-',
    'C+',
    'C',
    'C-',
    'D+',
    'D',
    'D-',
    'E',
  ];

  onGrade(BuildContext context, {required String grade}) {
    if (grade == 'A') {
      setState(() {
        math == 12;
        eng == 12;
        cre = 12;
        kisw = 12;
        geo = 12;
        home = 12;
        busi = 12;
        hist = 12;
        bio = 12;
        phy = 12;
        comp = 12;
      });
    } else if (grade == 'A-') {
      setState(() {
        math == 11;
        eng == 11;
        cre = 11;
        kisw = 11;
        geo = 11;
        home = 11;
        busi = 11;
        hist = 11;
        bio = 11;
        phy = 11;
        comp = 11;
      });
    } else if (grade == 'B+') {
      setState(() {
        math == 10;
        eng == 10;
        cre = 10;
        kisw = 10;
        geo = 10;
        home = 10;
        busi = 10;
        hist = 10;
        bio = 10;
        phy = 10;
        comp = 10;
      });
    } else if (grade == 'B') {
      setState(() {
        math == 9;
        eng == 9;
        cre = 9;
        kisw = 9;
        geo = 9;
        home = 9;
        busi = 9;
        hist = 9;
        bio = 9;
        phy = 9;
        comp = 9;
      });
    } else if (grade == 'B-') {
      setState(() {
        math == 8;
        eng == 8;
        cre = 8;
        kisw = 8;
        geo = 8;
        home = 8;
        busi = 8;
        hist = 8;
        bio = 8;
        phy = 8;
        comp = 8;
      });
    } else if (grade == 'C+') {
      setState(() {
        math == 7;
        eng == 7;
        cre = 7;
        kisw = 7;
        geo = 7;
        home = 7;
        busi = 7;
        hist = 7;
        bio = 7;
        phy = 7;
        comp = 7;
      });
    } else if (grade == 'C') {
      setState(() {
        math == 6;
        eng == 6;
        cre = 6;
        kisw = 6;
        geo = 6;
        home = 6;
        busi = 6;
        hist = 6;
        bio = 6;
        phy = 6;
        comp = 6;
      });
    } else if (grade == 'C-') {
      setState(() {
        math == 5;
        eng == 5;
        cre = 5;
        kisw = 5;
        geo = 5;
        home = 5;
        busi = 5;
        hist = 5;
        bio = 5;
        phy = 5;
        comp = 5;
      });
    } else if (grade == 'D+') {
      setState(() {
        math == 4;
        eng == 4;
        cre = 4;
        kisw = 4;
        geo = 4;
        home = 4;
        busi = 4;
        hist = 4;
        bio = 4;
        phy = 4;
        comp = 4;
      });
    } else if (grade == 'D') {
      setState(() {
        math == 3;
        eng == 3;
        cre = 3;
        kisw = 3;
        geo = 3;
        home = 3;
        busi = 3;
        hist = 3;
        bio = 3;
        phy = 3;
        comp = 3;
      });
    } else if (grade == 'A-') {
      setState(() {
        math == 2;
        eng == 2;
        cre = 2;
        kisw = 2;
        geo = 2;
        home = 2;
        busi = 2;
        hist = 2;
        bio = 2;
        phy = 2;
        comp = 2;
      });
    } else if (grade == 'A-') {
      setState(() {
        math == 1;
        eng == 1;
        cre = 1;
        kisw = 1;
        geo = 1;
        home = 1;
        busi = 1;
        hist = 1;
        bio = 1;
        phy = 1;
        comp = 1;
      });
    }
    ;
  }

  Future addSubjects() async {
    try {
      // show circular progress indicator
      await showDialog(
          context: context,
          builder: (context) {
            return const Center(child: CircularProgressIndicator());
          });

      // Pop out the circular progress indicator once done
      // Navigator.of(context).pop(context);

      addSubjectsDetails(
          mathsvalue,
          englishvalue,
          kiswahilivalue,
          physicsvalue,
          biologyvalue,
          chemistryvalue,
          crevalue,
          geographyvalue,
          businessvalue,
          compvalue,
          historyvalue,
          meanvalue);
    } catch (e) {
      await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.toString()),
            );
          });
    }
  }

  Future addSubjectsDetails(
    String math,
    String eng,
    String kis,
    String phy,
    String bio,
    String chem,
    String cre,
    String geo,
    String busi,
    String comp,
    String hist,
    String mean,
  ) async {
    try {
      await FirebaseFirestore.instance
          .collection('Students')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .set({
        'Mathematics': GradeHandler().getPoints(math),
        'English': GradeHandler().getPoints(eng),
        'Kiswahili': GradeHandler().getPoints(kis),
        'Physics': GradeHandler().getPoints(phy),
        'Cre': GradeHandler().getPoints(cre),
        'History': GradeHandler().getPoints(hist),
        'Mean Grade': GradeHandler().getPoints(mean),
        'Business': GradeHandler().getPoints(phy),
        'Geography': GradeHandler().getPoints(math),
        'Chemistry': GradeHandler().getPoints(eng),
        'Biology': GradeHandler().getPoints(kis),
        'Computer Studies': GradeHandler().getPoints(phy),
      });
      await showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('Your grades have been added successfully'),
            );
          });

      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: ((context) {
        return const Courses();
      })));
    } on FirebaseException catch (e) {
      await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Mathematics',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: mathsvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          mathsvalue = newValue!;
                          onGrade(context, grade: newValue);
                          validator:
                          (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            return null;
                          };
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'English',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: englishvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          englishvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Kiswahili',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: kiswahilivalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          kiswahilivalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Chemistry',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: chemistryvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          chemistryvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Biology',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: biologyvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          biologyvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Physics',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: physicsvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          physicsvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'History',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: historyvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          historyvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Geography',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: geographyvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          geographyvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'CRE',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: crevalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          crevalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Business',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: businessvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          businessvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Computer Studies',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: compvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          compvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     const Text(
                //       'Home science',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 50,
                //     ),
                //     DropdownButton(
                //       // Initial Value
                //       value: homevalue,

                //       // Down Arrow Icon
                //       icon: const Icon(Icons.keyboard_arrow_down),

                //       // Array list of items
                //       items: items.map((String items) {
                //         return DropdownMenuItem(
                //           value: items,
                //           child: Text(items),
                //         );
                //       }).toList(),
                //       // After selecting the desired option,it will
                //       // change button value to selected value
                //       onChanged: (String? newValue) {
                //         setState(() {
                //           homevalue = newValue!;
                //         });
                //       },
                //     ),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     const Text(
                //       'Overall meangrade',
                //       style: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //     const SizedBox(
                //       width: 50,
                //     ),
                //     DropdownButton(
                //       // Initial Value
                //       value: meanvalue,

                //       // Down Arrow Icon
                //       icon: const Icon(Icons.keyboard_arrow_down),

                //       // Array list of items
                //       items: items.map((String items) {
                //         return DropdownMenuItem(
                //           value: items,
                //           child: Text(items),
                //         );
                //       }).toList(),
                //       // After selecting the desired option,it will
                //       // change button value to selected value
                //       onChanged: (String? newValue) {
                //         setState(() {
                //           meanvalue = newValue!;
                //         });
                //       },
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Overall meangrade',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: meanvalue,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          meanvalue = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      addSubjects();
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Courses();
                      }));
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
