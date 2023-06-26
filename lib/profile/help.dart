import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class P_Help extends StatelessWidget {
  const P_Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
           SizedBox(
              height: 36,
              child: Row(children: [
                const SizedBox(width: 10),
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
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 57,
            child: Row(
              children: [
                const SizedBox(width: 10),
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
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                  icon: const IconTheme(
                    data: IconThemeData(
                      color: Color(0xFFE09145),
                      size: 30,
                    ),
                    child: Icon(Icons.arrow_forward),
                  ),
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
      ],
    );
  }
}
