import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:eco_fit/Servicios/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);
  final String _titulo = "Inicia Sesión";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titulo)),
      body: const Center(child: SingIn()),
    );
  }
}

class SingIn extends StatefulWidget {
  const SingIn({Key? key}) : super(key: key);

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {

  //Llave del formulario
  final _formkey = GlobalKey<FormState>();

  //Texto del correo
  final TextEditingController emailController = TextEditingController();
  
  //Texto de la contraseña
  final TextEditingController passwordController = TextEditingController();

  //Contraseña visible o invsible
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Form(key: _formkey, child: myForm(context));
  }

  Column myForm(BuildContext context) {

    //El widget actualiza el provider de LogPages. Revisar ""LogPages", Revisar "change.dart"
    final logpage = Provider.of<LogPages>(context);
    return Column(children: [
      TextField(
        controller: emailController,
        decoration: const InputDecoration(
          labelText: "email", //Cuando no hay nada escrito, esto aparece
        ),
      ),
      TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: "password",
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  //Cambio de visivilidad
                  _showPassword = !_showPassword; 
                });
              },
              child: Icon(
                 //Cambio del icono
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          //Visibilidad del texto
          obscureText: !_showPassword
          ),
      Row(
        children: [
          ElevatedButton(
              onPressed: () {
                //Intento de iniciar sesion. Revisar "Servicios/auth.dart"
                context.read<AuthServer>().singIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: const Text("Sign In")),
          ElevatedButton(
              onPressed: () {
                //Cambia la pagina con el provider. Revisar "LogIn/login.dart" y "pages/change.dart"
                logpage.actpage=1;
              },
              child: const Text("Sign Up")),
        ],
      ),
    ]);
  }
}



