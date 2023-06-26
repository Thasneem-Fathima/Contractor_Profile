import 'dart:convert';
import 'package:contractor_profile/storeget.dart';
import 'package:http/http.dart';

class HttpServices {
  
   final urledit = "https://troubled-duck-nightshirt.cyclic.app/api/v1/Contractors/updateDetails";
  Future update(name,pass,desc,upi) async {
    try {
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
