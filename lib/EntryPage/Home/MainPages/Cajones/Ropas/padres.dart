import 'package:flutter/material.dart';

class Padres extends ChangeNotifier{
  String _padre= "HOLA";
  String get padre{
     return _padre;
   }
   set padre(String father){
     _padre=father;
     //Todos los que dependen de este provider se notifican y actuan segun el cambio.
     notifyListeners();
   }

}