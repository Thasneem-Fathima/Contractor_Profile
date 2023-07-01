/*CONTACT US PAGE IN PROFILE*/

import 'package:contractor_profile/contact/contact_body.dart';
import 'package:contractor_profile/contact/contact_header.dart';
import 'package:contractor_profile/divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contractor_profile/nav/nav.dart';
import 'package:url_launcher/url_launcher.dart';


class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}
class _ContactUsState extends State<ContactUs> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
      backgroundColor: const Color(0XFF17181D),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const C_Header(),
            const SizedBox(
              height: 10,
            ),
            const Dividers(),
            C_Body(),
            const Dividers(),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xFF2B2B2B),
                  border: Border.all(
                    color: const Color(0xFF2B2B2B),
                    width: 2,
                  ),
                ),
                child: TextFormField(
                  controller: feedController,
                  maxLines: null,
                  decoration: const InputDecoration(
                    hintText: 'Enter your feedback here',
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color(0XFF757575),
                    ),
                    contentPadding: EdgeInsets.all(20),
                  ),
                  style: const TextStyle(
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
            const SizedBox(
              height: 15,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    String? encodeQueryParameters(Map<String, String> params) {
                      return params.entries
                          .map((MapEntry<String, String> e) =>
                              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                          .join('&');
                    }

                    final Uri emailUri = Uri(
                      scheme: 'mailto',
                      path: 'thasneemf78@gmail.com', //recipient address
                      query: encodeQueryParameters(<String, String>{
                        'subject': 'Feedback',
                        'body': feedController.text,
                      }),
                    );

                    if (await canLaunchUrl(emailUri)) {
                      launchUrl(emailUri);
                    } else {
                      throw Exception('Could not send feedback');
                    }
                    print('Feedback submitted: ${feedController.text}');
                    feedController.clear();
                    Navigator.pushNamed(context, '/profile');
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE09145),
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size(268, 65)),
                child: Text(
                  'Submit Feedback',
                  style: GoogleFonts.inter(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
