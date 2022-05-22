import 'package:flutter/material.dart';

//Uso del provider para cambiar de inciar sesion a registrarse y viceversa.
//
//Probablemente habia una forma mas sencilla pero es la que se me ocurrio.
class LogPages with ChangeNotifier{
   int _pages = 0;
    //getters y setters para detectar los cambios
   int get actpage{
     return _pages;
   }
   set actpage(int pag){
     _pages=pag;

     //Todos los que dependen de este provider se notifican y actuan segun el cambio.
     notifyListeners();
   }
}