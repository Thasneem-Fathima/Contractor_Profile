import 'package:contractor_profile/contact/contact.dart';
import 'package:contractor_profile/edit/edit.dart';
import 'package:contractor_profile/login.dart';
import 'package:contractor_profile/profile/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/home',
      routes: {
        '/home':(context)=>const Login(),
        '/profile': (context) => const Profile(),
        '/contact':(context)=>const ContactUs(),
        '/edit':(context)=>const EditDetails(),
      },
    );
  }
}
