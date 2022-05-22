import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:eco_fit/Servicios/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SingUP extends StatelessWidget {
  const SingUP({Key? key}) : super(key: key);
  final String _titulo = "Crea tu cuenta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titulo)),
      body: const Center(child: SingUp()),
    );
  }
}

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  //Llave del formulario
  final _formkey = GlobalKey<FormState>();

  //Texto del correo
  final TextEditingController emailController = TextEditingController();

  //Texto de la contraseña
  final TextEditingController passwordController = TextEditingController();

  //Texto del nomnbre de usuario
  final TextEditingController usernameController = TextEditingController();

  //Visivilidad de la contraseña
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
          labelText: "email",
        ),
      ),
      TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: "Password",
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  //Cambio de visivilidad de la contraseña
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                //Cambio del icono de la contraseña
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          //Visivilidad de contraseña
          obscureText: !_showPassword),
      TextField(
        controller: usernameController,
        decoration: const InputDecoration(
          labelText: "Username",
        ),
      ),
      Center(
        child: Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  //Intento de crear cuenta. Revisar "Servicios/auth.dart"
                  context.read<AuthServer>().singUp(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                      username: usernameController.text.replaceAll(" ", "_"));
                },
                child: const Text("Sign Up")),
            ElevatedButton(
                onPressed: () {
                  //Cambio de pagina. Revisar "LogIn/login.dart" y "pages/change,dart" 
                  logpage.actpage=0;
                },
                child: const Text("Sign In")),
          ],
        ),
      ),
    ]);
  }
}




