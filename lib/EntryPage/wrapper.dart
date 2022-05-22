import 'package:eco_fit/EntryPage/Home/home.dart';
import 'package:eco_fit/EntryPage/LogIn/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Retorna home o el AuthPage dependiendo el estado del estado se sesión.
    //
    //Usael provider para verificar si hubo algun cambio en el usuario de firebase actual
    final firebaseUser = Provider.of<User?>(context,listen: true);
    //Revisar "Home/home.dart" y "Login/login.dart"
    return firebaseUser != null ? const Home():const Log();
  }
}