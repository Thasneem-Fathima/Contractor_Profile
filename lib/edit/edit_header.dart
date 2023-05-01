import 'package:contractor_profile/divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E_Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
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
            SizedBox(
              width: 50,
            ),
            Text(
              'Edit your profile',
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
          height: 20,
        ),
        Text(
          'Edit the necessary fields!',
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0XFF757575),
            ),
            fontSize: 13.0,
          ),
        ),
        Dividers(),
      ],
    );
  }
}
