/*INITIAL PAGE OF PROFILE*/
import 'package:contractor_profile/services/apiservice.dart';
import 'package:contractor_profile/loading_spinner.dart';
import 'package:contractor_profile/profile/account.dart';
import 'package:contractor_profile/divider.dart';
import 'package:contractor_profile/profile/help.dart';
import 'package:contractor_profile/nav/nav.dart';
import 'package:contractor_profile/services/storeget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? cname = '';
  bool isLoading = true;

  void getcname() async {
    cname = await fetchname();
    if (cname == null) {
      await HttpServices().login();
      await fetchname();
      await stateset();
      return;
    }
    await stateset();
  }

  @override
  void initState() {
    getcname();
    super.initState();
  }

  Future fetchname() async {
    final LocalStorage localStorage = LocalStorage();
    await localStorage.getName().then((value) {
      setState(() {
        cname = value;
      });
    });
    return cname;
  }

  Future stateset() async {
    setState(() {
      isLoading = false;
    });
  }
  ///////

  // for Nav bar changes
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  ////

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const LoadingPage();
    }
    return Scaffold(
      backgroundColor: const Color(0XFF17181D),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        onTabChange: _onItemTapped,
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2B2B2B),
        title: Row(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi there!',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0XFF757575),
                      ),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    cname ?? '',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFFFCD9BB),
                      ),
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const CircleAvatar(
              radius: 45.0,
              backgroundImage: AssetImage('/person.PNG'),
            ),
          ],
        ),
        toolbarHeight: 110.0,
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Dividers(),
            SizedBox(
              height: 20,
            ),
            P_Account(),
            Dividers(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 20,
            ),
            P_Help(),
            Dividers(),
          ],
        ),
      ),
    );
  }
}
