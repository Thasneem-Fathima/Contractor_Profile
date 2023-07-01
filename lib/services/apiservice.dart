import 'dart:convert';
import 'package:contractor_profile/services/storeget.dart';
import 'package:http/http.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HttpServices {
  String loginUrl = dotenv.env['localUrl'] ?? 'API Does Not Exist';
  Future login() async {
    try {
      final urllogin = "$loginUrl/Contractors/login";
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

  String editUrl = dotenv.env['localUrl'] ?? 'API Does Not Exist';


  Future update(name,pass,desc,upi) async {
    try {
      final urledit = "$editUrl/Contractors/updateDetails";
      String? token = '';
      final LocalStorage localStorage = LocalStorage();
      token= await localStorage.getToken();
      final response = await post(Uri.parse(urledit), headers: {
        'Authorization':
        'Bearer $token'
      }, body: {
        "contractorName": name,
        "contractorPassword": pass,
        "contractorDescription": desc,
        "contractorUPI":upi
      });
      print(response.body);
      final responseBody = json.decode(response.body);
      final contractorName = responseBody['contractorName'];
      final restoken = responseBody['token'];
      localStorage.saveName(contractorName);
      localStorage.saveToken(restoken);
    } catch (e) {
      print(e);
    }
  }

}
