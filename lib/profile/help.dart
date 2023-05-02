import 'package:contractor_profile/divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:contractor_profile/contact/contact.dart';

class P_Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    Navigator.of(context).pushNamed('/contact');
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
      ],
    );
  }
}
