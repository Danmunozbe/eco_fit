import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:eco_fit/Servicios/auth.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
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
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;
  //final AuthServer _auth= AuthServer();

  @override
  Widget build(BuildContext context) {
    return Form(key: _formkey, child: myForm(context));
  }

  Column myForm(BuildContext context) {
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
            labelText: "password",
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            ),
          ),
          obscureText: !_showPassword),
      Row(
        children: [
          ElevatedButton(
              onPressed: () {
                context.read<AuthServer>().singIn(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim());
              },
              child: const Text("Sign In")),
          ElevatedButton(
              onPressed: () {
                logpage.actpage=1;
              },
              child: const Text("Sign Up")),
        ],
      ),
    ]);
  }
}



/*class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordFormField({
    required Key key,
    required this.controller,
  })  : assert(controller != null),
        super(key: key);

  @override
  State<StatefulWidget> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
          child: Icon(
            _showPassword ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
      obscureText: !_showPassword,
    );
  }
}*/

