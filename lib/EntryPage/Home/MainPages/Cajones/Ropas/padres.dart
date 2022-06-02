import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/material.dart';

class Padres extends ChangeNotifier{
  late Cajon _padre;
  Cajon get padre{
     return _padre;
   }
   set padre(Cajon father){
     _padre=father;
     //Todos los que dependen de este provider se notifican y actuan segun el cambio.
     notifyListeners();
   }

}