import 'dart:async';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/padres.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/ropas.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:eco_fit/EntryPage/Wrapper.dart';
import 'package:eco_fit/Servicios/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  //inicializa firebase
  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //Provider detectar el cambio de usuario
        //Revisar "Servicios/auth.dart"
        
        //Provider para cambiar entre inciar sesion o registrarse
        ChangeNotifierProvider<LogPages>(create:(_)=>LogPages()
        ),
        ChangeNotifierProvider<Padres>(create:(_)=>Padres()
        ),
      ],
      child: const MaterialApp(
        //Menu de entrada, revisar "EntryPage/wrapper.dart""
        home:DentroCajon() ,
      ),
    );
  }
}




//Wrapper()


