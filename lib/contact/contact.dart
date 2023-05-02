                  /*CONTACT US PAGE IN PROFILE*/


import 'package:contractor_profile/contact/contact_body.dart';
import 'package:contractor_profile/contact/contact_header.dart';
import 'package:contractor_profile/divider.dart';
import 'package:contractor_profile/profile/profile.dart';
import 'package:flutter/material.dart';
// import 'profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:contractor_profile/nav/nav.dart';


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
            C_Header(),
            SizedBox(
              height: 10,
            ),
            Dividers(),
            C_Body(),
            Dividers(),
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
                    Navigator.of(context).pushNamed('/profile');
                    // Navigator.of(context).push(
                    //         MaterialPageRoute(builder: (context)=>Profile()),
                    //       );
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
