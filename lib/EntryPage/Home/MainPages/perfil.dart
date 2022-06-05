import 'package:eco_fit/Servicios/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        //Todo el cuerpo. Aun no hay nada relevante a excepcion del boto de logout.
        children: [
          ElevatedButton(
          //Actualiza el Provider. Revisar "Servicios/auth.dart" 
          onPressed: () => context.read<AuthServer>().singOut(), child: const Text("Log out")
          ),
          
        ],
      ),
    );
  }
}