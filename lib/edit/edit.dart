/*EDIT DETAILS PAGE IN PROFILE*/

import 'package:contractor_profile/edit/edit_header.dart';
import 'package:flutter/material.dart';
import 'package:contractor_profile/profile/profile.dart';
import 'package:google_fonts/google_fonts.dart';

class EditDetails extends StatefulWidget {
  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  final _formfield = GlobalKey<FormState>();
  final upiidController = TextEditingController(text: profile[0].uiID);
  //initializing previous(before update) details in text field
  final passController = TextEditingController(text: profile[0].password);
  final nameController = TextEditingController(text: profile[0].name);
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF17181D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            E_Header(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  SizedBox(height: 85),
                  Form(
                      key: _formfield,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ///Upi ID input field
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: upiidController,
                            decoration: const InputDecoration(
                              hintText: "upi ID",
                              hintStyle: TextStyle(color: Color(0XFF757575)),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              filled: true,
                              fillColor: Color(0XFF2B2B2B),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),

                            ///validation
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fill this field!!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          ///////////
                          const SizedBox(height: 20),
                          ////Name input field
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: nameController,
                            decoration: const InputDecoration(
                              hintText: "Name",
                              hintStyle: TextStyle(
                                color: Color(0XFF757575),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              filled: true,
                              fillColor: Color(0XFF2B2B2B),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            //validation
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fill this field";
                              } else {
                                return null;
                              }
                            },
                          ),
                          ////////
                          const SizedBox(height: 20),
                          ////Password input field
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: passController,
                            obscureText: passToggle,
                            decoration: InputDecoration(
                              hintText: "New Password",
                              hintStyle: TextStyle(
                                color: Color(0XFF757575),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              filled: true,
                              fillColor: Color(0XFF2B2B2B),

                              ///eye icon
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                    print('visibility: ${passToggle}');
                                  });
                                },
                                child: Icon(
                                  passToggle
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: Colors.white,
                            ),

                            ///validation
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Password";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ],
                      )),
                  //////
                  SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formfield.currentState!.validate()) {
                          profile[0].name = nameController.text;
                          //updating details with the new content in the text field
                          profile[0].password = passController.text;
                          profile[0].uiID = upiidController.text;
                         
                          ///console log
                          print('Edited:');
                          for (var contractor in profile) {
                          print('Name: ${contractor.name}');
                          print('Password: ${contractor.password}');
                          print('UIID: ${contractor.uiID}');
                          }
                          /////
                          Navigator.of(context).pushNamed('/profile');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE09145),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          minimumSize: const Size(268, 65)),
                      child: Text(
                        "Update Profile",
                        style: GoogleFonts.inter(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
