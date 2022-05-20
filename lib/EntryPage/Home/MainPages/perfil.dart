import 'package:eco_fit/Servicios/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: ()=>context.read<AuthServer>().singOut(), child: const Text("Log out"))
        ],
      ),
    );
  }
}