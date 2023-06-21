import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'dart:convert';

class NameSession{
 
  Future<void> saveName(String cname) async {
    final session = FlutterSession();
    await session.set('ContractorName', cname);
    final coname= getName();
  }

  Future<String> getName() async {
    final session = FlutterSession();
    final cname = await session.get('ContractorName');
    return cname;
  }

}
