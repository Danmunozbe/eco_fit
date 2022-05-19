import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          centerTitle: true,
          title: const Text("TuPerfil"),
          ),        
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),
              BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "ADD"),
              BottomNavigationBarItem(
              icon: Icon(Icons.accessibility),
              label: "Profile",
              backgroundColor: Colors.red),
          ],
        ),
        body: const Center(
          child: Text(
            "hello",
            style: TextStyle(fontSize: 60),
          ),
        ),
      ),
    ) ;
  }  
}
  randomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)]
                  [Random().nextInt(9) * 100];
  }  
