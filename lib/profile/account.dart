import 'package:contractor_profile/divider.dart';
import 'package:contractor_profile/profile/logout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class P_Account extends StatelessWidget {
  const P_Account({super.key});

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
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/edit');
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
          const Dividers(),
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
                const Spacer(),
                const P_Logout(), 
                const SizedBox(width: 10),
              ],
            ),
          ),
      ],
    );
  }
}
