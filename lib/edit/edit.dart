/*EDIT DETAILS PAGE IN PROFILE*/

import 'package:contractor_profile/services/apiservice.dart';
import 'package:contractor_profile/edit/edit_header.dart';
import 'package:contractor_profile/loading_spinner.dart';
import 'package:contractor_profile/services/storeget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({super.key});

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  String? cname = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    final LocalStorage localStorage = LocalStorage();
    localStorage.getName().then((value) {
      setState(() {
        cname = value;
        nameController.text = cname ?? '';
        isLoading = false;
      });
    });
  }

  final _formfield = GlobalKey<FormState>();
  final upiidController = TextEditingController(text: '2389shbnasxj');
  final passController = TextEditingController(text: 'xbuqsyu');
  final nameController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const LoadingPage();
    }
    return Scaffold(
      backgroundColor: const Color(0XFF17181D),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const E_Header(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  const SizedBox(height: 85),
                  Form(
                      key: _formfield,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fill this field!!";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 20),
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
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Fill this field";
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: passController,
                            obscureText: passToggle,
                            decoration: InputDecoration(
                              hintText: "New Password",
                              hintStyle: const TextStyle(
                                color: Color(0XFF757575),
                              ),
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              filled: true,
                              fillColor: const Color(0XFF2B2B2B),

                              ///eye icon
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    passToggle = !passToggle;
                                    print('visibility: $passToggle');
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
                            style: const TextStyle(
                              color: Colors.white,
                            ),
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
                  const SizedBox(
                    height: 35,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formfield.currentState!.validate()) {
                          ///console log
                          print('Edited:');
                          print(nameController.text);
                          print(passController.text);
                          print(upiidController.text);

                          /////
                          setState(() {
                            isLoading = true;
                          });
                          await HttpServices().update(
                              nameController.text,
                              passController.text,
                              "Frost Bite Catering",
                              upiidController.text);
                          
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
