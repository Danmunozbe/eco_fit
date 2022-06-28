import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/padres.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import "package:eco_fit/Implementaciones/heapsort.dart";
import 'dart:math';

class DentroCajon extends StatefulWidget {
  final Cajon title;
   const DentroCajon({Key? key,required this.title}) : super(key: key);

  @override
  State<DentroCajon> createState() => _DentroCajonState();
}

class _DentroCajonState extends State<DentroCajon> {
  late List<Clothes>_foundUsers=widget.title.cllist;
  int count=0;
  @override
  Widget build(BuildContext context) {
    List<Clothes> prendas= widget.title.cllist;
    

    void _runFilter(String enteredKeyword) {
    List<Clothes> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = prendas;
    } else {
      results = prendas
          .where((user) =>
              user.name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
      });
    }    
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title.name),
        ),
        body: Center(            
          child: Column(
            children: [
              const SizedBox(
              height: 20,
            ),
            TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                    labelText: 'Search', suffixIcon: Icon(Icons.search)),
              ),
             const SizedBox(
              height: 20,
            ),
              Expanded(
                child: inEmpty(list: _foundUsers,
                ),
              ),
            
            ],
          )
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "ADD",
              onPressed: () {
                //Prenda a agregar
                Clothes temp= Clothes(name: "${Random().nextInt(100)}", imgName: widget.title.imgName, cajon: widget.title.name);
                setState((){
                  prendas.add(temp);
                  _foundUsers=prendas;
                  count++;});
                },
              child: const Icon(Icons.add) ),
            FloatingActionButton(
              heroTag: "SORT",
              onPressed: () {               
                setState((){
                  //Sortea las prendas
                  _foundUsers=heapSort(list: _foundUsers);
                  });
                },
               child: const Icon(Icons.sort_by_alpha), ),       
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        
      ),
    );
  }

  
}




Widget inEmpty({required List list}) {
  if (list.isEmpty){
    return const Text("No hay prendas");
  }else{
    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: Image.asset('assets/imgs/${list[index].imgName}.png',
                        fit:BoxFit.cover),
                title:  Text(
               list[index].name,
                  style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
              )
              
            ],
          ),
        ) ;
      },
    );
  }
}