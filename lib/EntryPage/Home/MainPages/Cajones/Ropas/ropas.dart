import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/padres.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DentroCajon extends StatefulWidget {
   const DentroCajon({Key? key}) : super(key: key);

  @override
  State<DentroCajon> createState() => _DentroCajonState();
}

class _DentroCajonState extends State<DentroCajon> { 
  int count=0;
  @override
  Widget build(BuildContext context) {
    Padres title = Provider.of<Padres>(context,listen: true);
    List<Clothes> prendas= title.padre.cllist;
    
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Clothes temp= Clothes(name: "$count", imgName: title.padre.imgName, cajon: title.padre.name);
            setState((){
              prendas.add(temp);
              count++;});
            },),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                leading: Image.asset('assets/imgs/${list.elementAt(index).imgName}.png',
                        fit:BoxFit.cover),
                title:  Text(
               list.elementAt(index).name,
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