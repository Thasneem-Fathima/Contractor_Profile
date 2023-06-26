import 'package:contractor_profile/divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class C_Body extends StatelessWidget {
  List<String> emails = ['example1@test.com', 'example2@test.com'];
  List<int> ph_numbers = [9346837121, 8282379738, 7811292191];

  C_Body({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
         
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 36,
                child: Row(children: [
                  const SizedBox(width: 10),
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
                const Dividers(),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 67,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        emails
                            .map((email) => email.toString())
                            .join('\n'),
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
            
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 36,
                child: Row(children: [
                  const SizedBox(width: 10),
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
                const Dividers(),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 67,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "- ${ph_numbers.map((num) => num.toString()).join('\n- ')}",
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
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 36,
                child: Row(children: [
                  const SizedBox(width: 10),
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
      ],
    );
  }
}
