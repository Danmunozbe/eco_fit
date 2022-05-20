import 'package:eco_fit/EntryPage/Wrapper.dart';
import 'package:eco_fit/Servicios/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';


//import 'dart:math';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthServer>(create:(_)=>AuthServer(FirebaseAuth.instance),
        ),
        StreamProvider(create: (context)=>context.read<AuthServer>().authstatechanges, initialData: null),
      ],
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}







