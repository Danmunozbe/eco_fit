import 'package:flutter/material.dart';
import 'MainPages/pages.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);  
  @override
  State<Home> createState() => HomeSatate();
}

class HomeSatate extends State<Home> {
  //_paginaActual indica cual delos botones de la barra inferior esta activo
  int _paginaActual=0;

  //_paginas es lista con las 4 paginas del la pagina principal
  //
  //Revisar "Mainpages"
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

        //Revisar metodo abajo        
        floatingActionButton:addButton(context),

        //Coloca el boton en la parte de abajo.
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        
        //Revisar Metodos abajo
        bottomNavigationBar: bottomBar(),
        body: _paginas[_paginaActual],
        
      ),
    ) ;
  }

  //Boton grande en la mitad del la barra de abajo
  FloatingActionButton addButton(BuildContext context) {
    return FloatingActionButton( 
          onPressed: (){
            //Lo que se realiza al clickearlo (No hay nada relevante aun)
             showDialog(context: context, builder: (context)=>AlertDialog(
               title: const Text("XDDD"
               ),
               actions: [
                 TextButton(onPressed: ()=>Navigator.pop(context), child: const Text("OK lol")
                 )
               ],
              )
             );
          },
          child: const Icon(Icons.add_rounded
          ), 
      );
  }

  //Barra Inferior
  BottomAppBar bottomBar() {
    return BottomAppBar( //bottom navigation bar on scaffold
        color:const Color.fromARGB(185, 206, 209, 8
        ),
        shape: const CircularNotchedRectangle(

        ), //shape of notch
        notchMargin: 5,
        child: Row( 
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //Botones de la barra. cada uno de ellos cambia la pagina acuatual con "setState()"
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=0});},),
            IconButton(icon: const Icon(Icons.all_inbox, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=1});},),
            IconButton(icon: const Icon(Icons.shop, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=2});},),
            IconButton(icon: const Icon(Icons.account_circle, color: Colors.white,), onPressed: () {setState(()=>{_paginaActual=3});},),
          ],
        ),
         
      );
  }  
}