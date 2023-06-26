/*INITIAL PAGE OF PROFILE*/

import 'package:contractor_profile/profile/account.dart';
import 'package:contractor_profile/divider.dart';
import 'package:contractor_profile/profile/help.dart';
import 'package:contractor_profile/nav/nav.dart';
import 'package:contractor_profile/storeget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? cname = '';
  @override
  void initState() {

    super.initState();
    final LocalStorage localStorage = LocalStorage();
    localStorage.getName().then((value) {
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
      backgroundColor: const Color(0XFF17181D),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2B2B2B),
        title: Row(
          children: [
            const SizedBox(
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
            const Spacer(),
            const CircleAvatar(
              radius: 45.0,
              backgroundImage: AssetImage('/person.PNG'),
            ),
          ],
        ),
        toolbarHeight: 110.0,
      ),
      body: const SafeArea(
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
