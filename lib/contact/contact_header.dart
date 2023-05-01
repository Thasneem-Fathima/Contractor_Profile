import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C_Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: 70,
        ),
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
    );
  }
}
