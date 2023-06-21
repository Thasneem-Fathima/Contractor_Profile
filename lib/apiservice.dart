import 'dart:convert';
import 'package:contractor_profile/storeget.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class HttpServices {
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
      final NameSession nameSession = NameSession();
      nameSession.saveName(contractorName);
      return responseBody['token'];
    } catch (e) {
      print(e);
    }
  }

   final urledit = "https://troubled-duck-nightshirt.cyclic.app/api/v1/Contractors/updateDetails";
  Future update(name,pass,desc,upi) async {
    try {
      final response = await post(Uri.parse(urledit), headers: {
        'Authorization':
'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb250cmFjdG9ySWQiOiI2NDhkNWIzYTU3NWM1MDU0NmI0ZWQ2M2IiLCJpYXQiOjE2ODcyNjU5NjZ9.Fporyo1Zi2YvF7Cbpb-uu-G9bI8mflQHPpO9Llh94mo'
      }, body: {
        "contractorName": name,
        "contractorPassword": pass,
        "contractorDescription": desc,
        "contractorUPI":upi
      });
      print(response.body);
      final responseBody = json.decode(response.body);
      final contractorName = responseBody['contractorName'];
      final NameSession nameSession = NameSession();
      nameSession.saveName(contractorName);
    } catch (e) {
      print(e);
    }
  }
}
