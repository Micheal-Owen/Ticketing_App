// ignore_for_file: unused_import, sort_child_properties_last, prefer_const_constructors
import 'package:cinemax/screens/cinema_location.dart';
import 'package:cinemax/utils/styles.dart';
import 'package:flutter/material.dart';
import 'flutterfire.dart';
import 'package:cinemax/screens/HomePage_and_Details/home_page.dart';
import 'sign_up_screen.dart';
import 'package:cinemax/main.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool loading = false;
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Styles.primaryColor,
        title: Center(
          child: Text('Log In'),
        ),
      ),
      body: SingleChildScrollView(
        //alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Tickets+ ',
                  style: TextStyle(
                      backgroundColor: Styles.primaryColor, fontSize: 38.0)),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _emailField,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
                  label: Text('Email'),
                  //hintText: 'Email',
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: _passwordField,
                obscureText: true,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
                  label: Text('password'),
                  icon: Icon(Icons.lock),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 200),
              child: SizedBox(
                width: 350,
                height: 50,
                child: OutlinedButton(
                  onPressed: () async {
                    setState(() => loading = true);
                    bool shouldNavigate =
                        await logIn(_emailField.text, _passwordField.text);
                    if (shouldNavigate) {
                      setState(() => loading = false);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Location(),
                        ),
                      );
                    } else {
                      setState(() => loading = false);
                      print('there is an error with log in details');
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Styles.primaryColor,
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                  ),
                  child: const Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 100,bottom: 10),
            //   child: Divider(
            //   thickness: 2,
            //     indent: 10,
            //     endIndent: 10,
            //     color: Colors.grey,
            //   ),
            // ),

            Row(
              children: <Widget>[
                const Text(
                  'Does not have account?',
                  style: TextStyle(fontSize: 18.0),
                ),
                TextButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 19, backgroundColor: Styles.primaryColor),
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => SignUpScreen()))))
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
