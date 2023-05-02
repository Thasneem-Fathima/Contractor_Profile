import 'package:contractor_profile/contact/contact.dart';
import 'package:contractor_profile/edit/edit.dart';
import 'package:contractor_profile/profile/profile.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/edit':
        return MaterialPageRoute(builder: (_) => EditDetails());
      case '/contact':
        return MaterialPageRoute(builder: (_) => ContactUs());
      default:
        return _error();
    }
  }
}

Route<dynamic> _error() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ERROR"),
        ),
        body: const Center(
          child: Text("ERROR SORRY!"),
        ));
  });
}