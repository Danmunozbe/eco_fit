import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _paginaActual=0;
  final List<Widget>_paginas=[
    const PaginaHome(),
    const Armario(),
    const Laundry(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Eco-Fit"),
          ),        
        floatingActionButton:FloatingActionButton( //Floating action button on Scaffold
            onPressed: (){
               showDialog(context: context, builder: (context)=>AlertDialog(
                 title: const Text("XDDD"),
                 actions: [
                   TextButton(onPressed: ()=>Navigator.pop(context), child: Text("OK lol"))
                 ],
                )
               );
            },
            child: const Icon(Icons.add_rounded), //icon inside button
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //floating action button position to center

        bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
          color:const Color.fromARGB(255, 88, 255, 82),
          shape: const CircularNotchedRectangle(), //shape of notch
          notchMargin: 5, //notche margin between floating button and bottom appbar
          child: Row( //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: const Icon(Icons.menu, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=0});},),
              IconButton(icon: const Icon(Icons.all_inbox, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=1});},),
              IconButton(icon: const Icon(Icons.shop, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=2});},),
              IconButton(icon: const Icon(Icons.account_circle, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=3});},),
            ],
          ),
        ),
        body: _paginas[_paginaActual],
      ),
    ) ;
  }  
}

class PaginaHome extends StatelessWidget {
  const PaginaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Home",style: TextStyle(fontSize: 30),),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile",style: TextStyle(fontSize: 30),),
    );
  }
}
class Laundry extends StatelessWidget {
  const Laundry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Laundry",style: TextStyle(fontSize: 30),),
    );
  }
}
class Armario extends StatelessWidget {
  const Armario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Armario",style: TextStyle(fontSize: 30),),
    );
  }
}


