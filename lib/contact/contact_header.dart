import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C_Header extends StatelessWidget {
  const C_Header({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const IconTheme(
              data: IconThemeData(
                color: Color(0xFFFCD9B8),
              ),
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20), 
              child: Text(
                'Contact Us',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xFFFCD9BB),
                  ),
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
