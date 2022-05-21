import 'package:flutter/material.dart';

class LogPages with ChangeNotifier{
   int _pages = 0;

   int get actpage{
     return _pages;
   }
   set actpage(int pag){
     _pages=pag;
    notifyListeners();
   }
}