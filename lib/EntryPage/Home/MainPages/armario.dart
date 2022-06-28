import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/padres.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/Ropas/ropas.dart';
import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Armario extends StatefulWidget {
  const Armario({Key? key}) : super(key: key);

  @override
  State<Armario> createState() => _ArmarioState();
}

class _ArmarioState extends State<Armario> {
  List<Cajon> cajones= Utils.getCajones();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //centrados y expandidos para que ocpen la pantalla
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: ListView.builder(
            //Cantidad de cajones
            itemCount: cajones.length,
            itemBuilder: (BuildContext context, int index) {
              //Que sucede al hacer click
              return GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => DentroCajon(title: cajones[index],))
                  ));
                }),
                child: Container(
                  //Coloca la imagen
                  margin: const EdgeInsets.all(20),
                  height: 150,
                  child:  Stack(
                    children: [
                      Positioned.fill(
                      child: Image.asset('assets/imgs/${cajones[index].imgName}.png',
                      fit:BoxFit.cover)
                      
                      )                   
                    ],
                  ),
                ),
              ) ;
            },
          ),)
        ]
      ),
    );
  }
}
