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
  
  List<Clothes> prendas=[]; 
  @override
  Widget build(BuildContext context) {
    Padres title = Provider.of<Padres>(context,listen: true);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title.padre),
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              itemCount: prendas.length,
              itemBuilder: (BuildContext context, int index) {
                if(prendas.isEmpty){
                  return const Text("No hay prendas");
                }
                
                return GestureDetector(
                  onDoubleTap: () {
                    
                  },

                ) ;
              },
            ),
          ),
        ),
      ),
    );
  }
}