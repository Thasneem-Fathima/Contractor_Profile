import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  Future<void> saveName(String cname) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('ContractorName', cname);
  }

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('PresentToken', token);
  }

  Future<String?> getName() async {
    final prefs = await SharedPreferences.getInstance();
    final cname = prefs.getString('ContractorName');
    return cname;
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('PresentToken');
    return token;
  }
}
