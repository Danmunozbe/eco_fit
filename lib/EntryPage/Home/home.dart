import 'package:flutter/material.dart';
import 'MainPages/pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);  
  @override
  State<Home> createState() => HomeSatate();
}

class HomeSatate extends State<Home> {
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
          color:Color.fromARGB(185, 206, 209, 8),
          shape: const CircularNotchedRectangle(), //shape of notch
          notchMargin: 5, //notche margin between floating button and bottom appbar
          child: Row( //children inside bottom appbar
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: const Icon(Icons.home, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=0});},),
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