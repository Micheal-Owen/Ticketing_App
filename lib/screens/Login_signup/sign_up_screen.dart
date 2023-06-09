// ignore_for_file: unused_import, prefer_const_constructors, use_build_context_synchronously
import 'dart:io';
import 'package:cinemax/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cinemax/screens/Login_signup/auth.dart';
import 'package:cinemax/screens/Login_signup//image_controller.dart';
import 'package:cinemax/screens/Login_signup/wrapper.dart';
import 'flutterfire.dart';
import 'package:cinemax/screens/HomePage_and_Details/home_page.dart';
import 'log_in_screen.dart';
import 'package:cinemax/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:image_picker/image_picker.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool loading = false;
  // variables
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();
  final TextEditingController _usernameField = TextEditingController();
  final TextEditingController _contactField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ImageController());
    return loading
        ? Loading()
        : GetBuilder<ImageController>(builder:(imageController){ 
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Styles.primaryColor,
              title: Padding(
                padding: EdgeInsets.all(80),
                child: Text('Sign Up'),
              ),
            ),
            body: SingleChildScrollView(
              //alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Tickets+',
                        style: TextStyle(
                            color: Color.fromARGB(247, 255, 9, 9),
                            fontSize: 38.0)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.all(0.0),
                          width: 270,
                          height: 340,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color.fromARGB(247, 162, 157, 157),
                          ),
                          child: imageController.pickedFile != null
                              ? Image.file(File(imageController.pickedFile!.path),
                                  width: 270, height: 340, 
                                   fit: BoxFit.fitHeight)
                              : Center(
                                  child: Icon(
                                    Icons.add_a_photo,
                                    size: 50,
                                  ),
                                ) //const Text('Profile Image'),),
                          ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SizedBox(
                      width: 180,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: () async => await imageController.pickImage(), 
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(247, 162, 157, 157),
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        child: const Text(
                          'Upload Profile Image',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller: _usernameField,
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   //borderRadius: BorderRadius.circular(60)
                        // ),
                        label: Text('Username'),
                        //hintText: 'username',
                        icon: Icon(Icons.person),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller: _emailField,
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   //borderRadius: BorderRadius.circular(60)
                        // ),
                        label: Text('Email'),
                        //hintText: 'Email',
                        icon: Icon(Icons.mail),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordField,
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   //borderRadius: BorderRadius.circular(60)
                        // ),
                        label: Text('password'),
                        icon: Icon(Icons.lock),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: TextField(
                      controller: _contactField,
                      decoration: InputDecoration(
                        // border: OutlineInputBorder(
                        //   //borderRadius: BorderRadius.circular(60)
                        // ),
                        label: Text('Contact'),
                        hintText: 'e.g. 0xxxxxxxxx',
                        icon: Icon(Icons.phone),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150, bottom: 20),
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: OutlinedButton(
                        onPressed: () async {
                          setState(() => loading = true);
                          bool shouldNavigate = await signIn(
                              _emailField.text,
                              _passwordField.text,
                              _usernameField.text,
                              _contactField.text);
                          if (shouldNavigate) {
                            setState(() => loading = false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LogInScreen(),
                              ),
                            );
                          } else {
                            setState(() => loading = false);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                            print('there is an error');
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Styles.primaryColor,
                          ),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        );
  }
}
