import 'package:eco_fit/EntryPage/Home/home.dart';
import 'package:eco_fit/EntryPage/LogIn/login.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/log.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/sign.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    //retorna home o el AuthPage dependiendo
    final actualPage = Provider.of<LogPages>(context,listen: true);
    return (actualPage.actpage == 0) ? const LogIn():const SingUP();
  }
}