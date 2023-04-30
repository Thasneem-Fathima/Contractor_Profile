                  /*CONTACT US PAGE IN PROFILE*/


import 'package:flutter/material.dart';
// import 'profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:contractor_profile/nav.dart';


class ContactUs extends StatefulWidget {
  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final feedController = TextEditingController();

  // for Nav bar changes
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  /////
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF17181D),
      bottomNavigationBar: NavBar(selectedIndex: _selectedIndex,
          onTabChange: _onItemTapped,),
          
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
                    Row(
                      children: [
                         IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: IconTheme(
                            data: IconThemeData(
                              color: Color(0xFFFCD9B8),
                            ),
                            child: Icon(Icons.arrow_back),
                          ),
                        ),
                        SizedBox(width: 70,),
                        Text(
                   'Contact Us',
                   style: GoogleFonts.inter(
                         textStyle: const TextStyle(
                           color: Color(0xFFFCD9BB),
                         ),
                         fontSize: 30.0,
                   ),
                 ),
                      ],
                    ),
              
            SizedBox(
              height: 10,
            ),
             SizedBox(
                              width: 380,
                              child: Divider(
                                color: Color(0xFFBDBDBD).withOpacity(0.1),
                                thickness: 1.0,
                                ),
                              ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'We are deeply sorry for the inconvenience caused!',
                  style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 13.0,
                      ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                'You can contact us via below means',
                style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 13.0,
                      ),
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EMAIL',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFE09145)
                          
                        ),
                        fontSize: 20.0,
                        fontWeight:FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ])),
                SizedBox(
                              width: 380,
                              child: Divider(
                                color: Color(0xFFBDBDBD).withOpacity(0.1),
                                thickness: 1.0,
                                ),
                              ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 67,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // profile[0]
                        //     .emails
                        //     .map((email) => email.toString())
                        //     .join('\n'),
                        'example1@test.com',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 15.0,
                      ),
                      ),
                      Text(
                        'example2@test.com',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 15.0,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            SizedBox(
              height: 10,
            ),
            Container(
                height: 36,
                child: Row(children: [
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PHONE NUMBER',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFE09145)
                          
                        ),
                        fontSize: 20.0,
                        fontWeight:FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ])),
                SizedBox(
                              width: 380,
                              child: Divider(
                                color: Color(0xFFBDBDBD).withOpacity(0.1),
                                thickness: 1.0,
                                ),
                              ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 67,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // "- ${profile[0].numbers.map((num) => num.toString()).join('\n- ')}",
                        '- 9346837121',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 15.0,
                      ),
                      ),
                      Text(
                        '- 8282379738',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 15.0,
                      ),
                      ),
                      Text(
                        '- 7811292191',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0XFF757575),
                          
                        ),
                        fontSize: 15.0,
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 36,
                child: Row(children: [
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Feedback',
                        style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFFE09145)
                          
                        ),
                        fontSize: 20.0,
                        fontWeight:FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                ])),
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
            Form(
              key: _formKey,
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF2B2B2B),
                  border: Border.all(
                    color: Color(0xFF2B2B2B),
                    width: 2,
                  ),
                ),
                child: TextFormField(
                  controller: feedController,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Enter your feedback here',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Color(0XFF757575),),
                    contentPadding: EdgeInsets.all(20),
                  ),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Fill this field!";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    feedController.clear();
                    Navigator.pushNamed(context, '/');
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE09145),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(268, 65)
                ),
                child: Text('Submit Feedback',
                style: GoogleFonts.inter(
                            fontSize: 16.0,
                          ),),
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
     

    );
  }
}
