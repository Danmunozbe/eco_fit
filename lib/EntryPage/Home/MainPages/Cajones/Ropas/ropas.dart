import 'dart:collection';
import 'dart:math';
import 'package:random_string/random_string.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/padres.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:eco_fit/Implementaciones/heapsort.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DentroCajon extends StatefulWidget {
   const DentroCajon({Key? key}) : super(key: key);

  @override
  State<DentroCajon> createState() => _DentroCajonState();
}

class _DentroCajonState extends State<DentroCajon> { 
  //Nombres de las prendas de pruebas 
  //Puedes cambiarlo para hacer pruebas con nombres aleatoreos
  //Pero entonces Cambia en la linea "44" lo que esta desdepues de "names:"
  List<String> tests=[];
  int count=0;
  @override
  Widget build(BuildContext context) {
    Padres title = Provider.of<Padres>(context,listen: true);
    Heap prendas= title.padre.cllist;
    
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title.padre.name),
        ),
        body: Center(
          child: inEmpty(list: prendas, 
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "ADD",
              onPressed: () {
                //Prenda a agregar
                String tempName= randomString(5);
                tests.add(tempName);
                Clothes temp= Clothes(name: tests[count], imgName: title.padre.imgName, cajon: title.padre.name);
                setState((){
                  prendas.addToHeap(clothe: temp);
                  count++;});
                },
              child: const Icon(Icons.add) ),
            FloatingActionButton(
              heroTag: "SORT",
              onPressed: () {               
                setState((){
                  //Sortea las prendas
                  prendas.list=prendas.sort(entry: prendas.list);
                  ;});
                },
               child: const Icon(Icons.sort_by_alpha), ),
               FloatingActionButton(
              heroTag: "Supress",
              onPressed: () {               
                setState((){
                  //Limpia la lista
                  prendas.clear();
                  count=0;
                  });
                },
               child: const Icon(Icons.clear), ),     
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        
      ),
    );
  }
}

Widget inEmpty({required Heap list}) {
  if (list.isEmpty){
    return const Text("No hay prendas");
  }else{
    return ListView.builder(
      addAutomaticKeepAlives: false,
      itemCount: list.size,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(
            children: [
              ListTile(
                leading: Image.asset('assets/imgs/${list.list[index].imgName}.png',
                        fit:BoxFit.cover),
                title:  Text(
               list.list[index].name,
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