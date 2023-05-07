import 'package:contractor_profile/divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class P_Logout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        ///popup dialog box
        bool confirmed = await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Color(0XFF2B2B2B),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Logout of your account?',
                    style: TextStyle(
                      color: Color(0xFFFCD9B8),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              actions: <Widget>[
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Text(
                            'Logout',
                            style: TextStyle(
                              color: Color(0xFFE09145),
                              fontSize: 20,
                            ),
                          ),
                          onTap: () {
                            print('Logged out');
                            Navigator.of(context).pop(true);
                           },
                        ),
                      ],
                    ),
                    Dividers(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 20,
                            ),
                          ),
                          onTap: () {
                            print('Still logged in');
                            Navigator.of(context).pop(false);
                          },
                        ),
                      ],
                    ),
                    Dividers(),
                  ],
                ),
              ],
            );
          },
        );

        /////////
      },
      icon: Icon(
        Icons.arrow_forward,
        color: Color(0xFFE09145),
        size: 30,
      ),
    );
  }
}
