import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dividers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: Divider(
        color: Color(0xFFBDBDBD).withOpacity(0.1),
        thickness: 1.0,
      ),
    );
  }
}
