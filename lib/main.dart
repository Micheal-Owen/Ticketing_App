// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import
import 'package:cinemax/models/seat_number_model.dart';
import 'package:provider/provider.dart';
import 'package:cinemax/screens/Login_signup/auth.dart';
import 'package:cinemax/screens/Login_signup/wrapper.dart';
import 'package:cinemax/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:cinemax/screens/Login_signup/log_in_screen.dart';
import 'package:cinemax/screens/Login_signup/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dynamic_themes/dynamic_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(ChangeNotifierProvider(
      create: (context) => SeatNumberModel(), child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Wrapper()),
    );
  }
}
