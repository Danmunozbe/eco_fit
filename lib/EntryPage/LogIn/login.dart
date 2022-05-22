import 'package:eco_fit/EntryPage/LogIn/pages/change.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/log.dart';
import 'package:eco_fit/EntryPage/LogIn/pages/sign.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Log extends StatelessWidget {
  const Log({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    //Usa el provider para dectectar si se incia sesion o se registra.
    final actualPage = Provider.of<LogPages>(context,listen: true);

    //Revisar "LogIn/pages"
    return (actualPage.actpage == 0) ? const LogIn():const SingUP();
  }
}