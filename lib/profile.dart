                  /*INITIAL PAGE OF PROFILE*/

import 'dart:ui';

import 'package:contractor_profile/nav.dart';
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
     bottomNavigationBar: NavBar(selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,),
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
                  profile[0].name,
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
      body: SafeArea(child:Column(
        children: [
          SizedBox(
            width: 380,
            child: Divider(
              color: Color(0xFFBDBDBD).withOpacity(0.1),
              thickness: 1.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 36,
              child: Row(children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFE09145),
                        ),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ])),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 57,
            child: Row(
              children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Edit your profile',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFFCD9BB),
                        ),
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Edit your details',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                        ),
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/edit');
                  },
                  icon: IconTheme(
                    data: IconThemeData(
                      color: Color(0xFFE09145),
                      size: 30,
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
                SizedBox(width: 10),
                
              ],
            ),
          ),
            SizedBox(
                  width: 380,
                  child: Divider(
                    color: Color(0xFFBDBDBD).withOpacity(0.1),
                    thickness: 1.0,
                  ),
                ),
          SizedBox(
            height: 20,
          ),
        
          Container(
            height: 57,
            child: Row(
              children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Logout',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFFCD9BB),
                        ),
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Logout from your account',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                        ),
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () async {
                   ///popup dialog box
                    bool confirmed = await showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    Color(0XFF2B2B2B),
                                                content: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Logout of your account?',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFFCD9B8),
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                actions: <Widget>[
                                                  Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          GestureDetector(
                                                            child: Text(
                                                              'Logout',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFE09145),
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop(true);
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 250,
                                                        child: Divider(
                                                          color: const Color(
                                                              0xFFBDBDBD).withOpacity(0.1),
                                                          thickness: 1.0,
                                                        ),
                                                      ),
                                                      SizedBox(height: 20),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          GestureDetector(
                                                            child: Text(
                                                              'Cancel',
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFF757575),
                                                                fontSize: 20,
                                                              ),
                                                            ),
                                                            onTap: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop(false);
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        width: 250,
                                                        child: Divider(
                                                          color: const Color(
                                                              0xFFBDBDBD).withOpacity(0.1),
                                                          thickness: 1.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              );
                                            },
                                          );


                                          /////////
                  },
                  icon: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFFE09145),
                      size: 30,
                    ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
           SizedBox(
                  width: 380,
                  child: Divider(
                    color: Color(0xFFBDBDBD).withOpacity(0.1),
                    thickness: 1.0,
                  ),
                ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          
          Container(
              height: 36,
              child: Row(children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Help',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFE09145),
                        ),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ])),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 57,
            child: Row(
              children: [
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact Us',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFFCD9BB),
                        ),
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'For further details contact!!',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                        ),
                        fontSize: 13.0,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  icon: IconTheme(
                    data: IconThemeData(
                      color: Color(0xFFE09145),
                      size: 30,
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
           SizedBox(
                  width: 380,
                  child: Divider(
                    color: Color(0xFFBDBDBD).withOpacity(0.1),
                    thickness: 1.0,
                  ),
                ),
        ],
      ),),
    );
  }
}
