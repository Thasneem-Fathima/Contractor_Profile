import 'package:flutter/material.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: Divider(
        color: const Color(0xFFBDBDBD).withOpacity(0.1),
        thickness: 1.0,
      ),
    );
  }
}
