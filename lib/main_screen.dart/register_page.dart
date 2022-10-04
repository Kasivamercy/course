// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:course/main_screen.dart/dashboard.dart';
import 'package:course/main_screen.dart/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _kcsenoController = TextEditingController();
  final _yearController = TextEditingController();
  final _kcpenoController = TextEditingController();

  Future<UserCredential> SignUp() async {
    return await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
    );
  }

  Future<String> SaveUserCredentials(Map<String, dynamic> data) async {
    await FirebaseFirestore.instance
        .collection("UserCredentials")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set(data);
    return FirebaseAuth.instance.currentUser!.uid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register Page'), centerTitle: true),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //Icon(
            // Icons.phone_android,
            //color: Colors.black,
            //size: 100,
            // ),
            //Hello again
            SizedBox(height: 20),
            //Full Name textfield
            CustomTextField(
                fieldname: "Full Name", controller: _fullnameController),
            SizedBox(height: 10),
            //Kcse Index No textfield
            CustomTextField(
              fieldname: "KCSE Index Number",
              controller: _kcsenoController,
              maxLength: 11,
              inputType: TextInputType.number,
            ),
            SizedBox(height: 10),
            //email textfield
            CustomTextField(
              fieldname: "KCSE year",
              controller: _yearController,
              maxLength: 4,
              inputType: TextInputType.number,
            ),
            SizedBox(height: 10),
            //email textfield
            CustomTextField(
              fieldname: "KCPE Index Number",
              controller: _kcpenoController,
              maxLength: 11,
              inputType: TextInputType.number,
            ),
            SizedBox(height: 10),
            //email textfield
            CustomTextField(fieldname: "Email", controller: _emailController),
            SizedBox(height: 10.0),
            //password textfield

            CustomTextField(
              fieldname: "Password",
              controller: _passwordController,
              isPassword: true,
            ),
            SizedBox(height: 10.0),
            //confirm password
            CustomTextField(
              fieldname: "Confirm Password",
              controller: _confirmpasswordController,
              isPassword: true,
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: GestureDetector(
                onTap: () async {
                  try {
                    var result = await SignUp();

                    if (result.user != null) {
                      await SaveUserCredentials(({
                        "id": result.user!.uid,
                        "fullname": _fullnameController.text,
                        "email": _emailController.text,
                        // "password": _passwordController.text,
                        //  "confirmpassword": _confirmpasswordController.text,
                        "kcse": _kcsenoController.text,
                        "year": _yearController.text,
                        "kcpe": _kcpenoController.text,
                      })).then((value) => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => DashboardPage())));
                    }

                    //await SignUp();
                  } catch (e) {
                    print(e);
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.0),

            //not a member? Register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you have an account?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => LoginPage()));
                  },
                  child: Text(
                    ' Login',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  CustomTextField(
      {Key? key,
      required this.fieldname,
      required this.controller,
      this.inputType = TextInputType.text,
      this.isPassword = false,
      this.maxLength = 100
      //  this.validator = validateName,
      })
      : super(key: key);
  final String fieldname;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;
  final int? maxLength;
  //final String Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: widget.maxLength != null
              ? TextFormField(
                  //   validator: widget.validator,
                  keyboardType: widget.inputType,
                  inputFormatters: widget.inputType != TextInputType.text
                      ? <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ]
                      : null,
                  maxLength: widget.maxLength,
                  controller: widget.controller,
                  obscureText: widget.isPassword,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.fieldname,
                      counterText: ""),
                )
              : TextFormField(
                  keyboardType: widget.inputType,
                  // maxLength: widget.maxLength,
                  controller: widget.controller,
                  obscureText: widget.isPassword,
                  inputFormatters: widget.inputType != TextInputType.text
                      ? <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ]
                      : null,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    counterText: "",
                    hintText: widget.fieldname,
                  ),
                ),
        ),
      ),
    );
  }
}

String? validateName(String? value) {
  return value == null ? "Field cannot be empty" : null;
}

String? validateIndexNumber(int? value) {
  validateName(value.toString());
  return value.toString().length < 11 ? "Field must be 11 digits" : null;
}

String? validateYear(int? value) {
  validateName(value.toString());
  return (int.parse(value.toString()) > 2022 &&
          (int.parse(value.toString()) < 2000))
      ? "Field must be between 2000 and 2002"
      : null;
}
