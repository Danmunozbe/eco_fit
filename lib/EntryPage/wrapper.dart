import 'package:eco_fit/EntryPage/Home/home.dart';
import 'package:eco_fit/EntryPage/LogIn/login.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //retorna home o el AuthPage dependiendo
    final firebaseUser = Provider.of<User?>(context,listen: true);
    return firebaseUser != null ? const Home():const Log();
  }
}