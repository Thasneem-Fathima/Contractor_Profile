// import 'package:contractor_profile/RouteGenerator.dart';
import 'package:contractor_profile/contact/contact.dart';
import 'package:contractor_profile/edit/edit.dart';
import 'package:contractor_profile/login.dart';
import 'package:contractor_profile/profile/profile.dart';
import 'package:flutter/material.dart';

// import 'package:contractor_profile/contact.dart';

// void main() {
//   runApp(MaterialApp(
//     // home: Profile(),
//     debugShowCheckedModeBanner: false,
//     // onGenerateRoute: RouteGenerator.generateRoute,
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/':(context) => Login(),
//         '/profile': (context) => Profile(),
//         '/contact':(context)=>ContactUs(),
//         '/edit':(context)=>EditDetails(),
//       },
//       // onGenerateRoute: RouteGenerator.generateRoute,
//     );
//   }
// }
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      initialRoute: '/home',
      routes: {
        '/home':(context)=>Login(),
        '/profile': (context) => Profile(),
        '/contact':(context)=>ContactUs(),
        '/edit':(context)=>EditDetails(),
      },
    );
  }
}
