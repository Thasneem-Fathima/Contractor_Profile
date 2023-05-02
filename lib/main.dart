// import 'package:contractor_profile/edit.dart';
import 'package:contractor_profile/RouteGenerator.dart';
import 'package:contractor_profile/profile/profile.dart';
import 'package:flutter/material.dart';

// import 'package:contractor_profile/contact.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // initialRoute: '/',
//       // routes: {
//       //   '/': (context) => Profile(),
//       //   '/contact':(context)=>ContactUs(),
//       //   '/edit':(context)=>FormScreen(),
//       // },
//       // onGenerateRoute: RouteGenerator.generateRoute,
//     );
//   }
// }
