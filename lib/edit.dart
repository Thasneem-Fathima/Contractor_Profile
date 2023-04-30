                /*EDIT DETAILS PAGE IN PROFILE*/ 


import 'package:flutter/material.dart';
import 'profile.dart';
import 'package:google_fonts/google_fonts.dart';

class FormScreen extends StatefulWidget {
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
            Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    SizedBox(height: 20,),
                    Row(
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
                        SizedBox(width: 50,),
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
                  SizedBox(height: 20,),
                 Text(
                   'Edit the necessary fields!',
                   style: GoogleFonts.inter(
                     textStyle: const TextStyle(
                       color: Color(0XFF757575),
                     ),
                     fontSize: 13.0,
                   ),
                 ),
                     SizedBox(
                       width: 380,
                       child: Divider(
                         color: Color(0xFFBDBDBD).withOpacity(0.1),
                         thickness: 1.0,
                       ),
                     ),
                   ],
                 ),
          
        
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
                          hintStyle: TextStyle(color: Color(0XFF757575),),
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
                          hintStyle: TextStyle(color: Color(0XFF757575),),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          filled: true,
                          fillColor: Color(0XFF2B2B2B),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                passToggle = !passToggle;
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
                      
                            Navigator.pushNamed(context, '/');
                          }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE09145),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(268, 65)
                ),
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
        ),],),
      ),
    );
  }
}
