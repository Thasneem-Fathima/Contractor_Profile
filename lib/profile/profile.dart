/*INITIAL PAGE OF PROFILE*/

import 'dart:ui';
import 'package:contractor_profile/profile/account.dart';
import 'package:contractor_profile/divider.dart';
import 'package:contractor_profile/profile/help.dart';
import 'package:contractor_profile/nav/nav.dart';
import 'package:contractor_profile/storeget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Contractor {
  String name;
  String password;
  String uiID;
  // List<int> numbers;
  // List<String> emails;

  Contractor(
    this.name,
    this.password,
    this.uiID,
    // {this.numbers = const [], this.emails = const []}
  );
}

List<Contractor> profile = [
  Contractor(
    "Frost Bite",
    "xbuqsyu",
    "2389shbnasxj",
    // numbers: [9346837121, 8282379738, 7811292191],
    // emails: ['example1@test.com', 'example2@test.com'],
  ),
];

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? cname = '';
  @override
  ///console log
  void initState() {
    for (var contractor in profile) {
    print('Name: ${contractor.name}');
    print('Password: ${contractor.password}');
    print('UIID: ${contractor.uiID}');
    }

    super.initState();
    print('In profile initstate');
    final NameSession nameSession = NameSession();
    nameSession.getName().then((value) {
      setState(() {
        cname = value;
      });
    });
  }

  /////// 

  // for Nav bar changes
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  ////

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF17181D),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF2B2B2B),
        title: Row(
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi there!',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0XFF757575),
                    ),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  // profile[0].name,
                  cname??'',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFFFCD9BB),
                    ),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 45.0,
              backgroundImage: AssetImage('/person.PNG'), //image file's name
            ),
          ],
        ),
        toolbarHeight: 110.0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Dividers(),
            SizedBox(
              height: 20,
            ),
            P_Account(),
            Dividers(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            P_Help(),
            Dividers(),
          ],
        ),
      ),
    );
  }
}
