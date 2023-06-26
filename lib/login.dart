import 'dart:convert';
import 'package:contractor_profile/storeget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final urllogin =
      "https://troubled-duck-nightshirt.cyclic.app/api/v1/Contractors/login";
  Future login() async {
    try {
      final response = await post(Uri.parse(urllogin), body: {
        "contractorCode": "abcxyz",
        "contractorPhoneNumber": 7894561230.toString(),
        "contractorPassword": "abcd1234"
      });
      print(response.body);
      final responseBody = json.decode(response.body);
      final contractorName = responseBody['contractorName'];
      final token = responseBody['token'];
      final LocalStorage localStorage = LocalStorage();
      localStorage.saveName(contractorName);
      localStorage.saveToken(token);
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await login();
            Navigator.pushNamed(context, '/profile');
          },
          child: const Text("Login"),
        ),
      ),
    );
  }
}
