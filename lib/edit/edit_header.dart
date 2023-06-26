import 'package:contractor_profile/divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class E_Header extends StatelessWidget {
  const E_Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            IconButton(
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
            const SizedBox(
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
        const SizedBox(
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
        const Dividers(),
      ],
    );
  }
}
