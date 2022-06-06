import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/material.dart';

class Padres extends ChangeNotifier{
  Cajon _padre=Utils.getCajones()[0];
  Cajon get padre{
     return _padre;
   }
   set padre(Cajon father){
     _padre=father;
     //Todos los que dependen de este provider se notifican y actuan segun el cambio.
     notifyListeners();
   }

}



