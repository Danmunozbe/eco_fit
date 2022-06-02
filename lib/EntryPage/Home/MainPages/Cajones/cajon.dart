 import 'dart:collection';

import 'package:eco_fit/Implementaciones/heapsort.dart';

class Cajon extends LinkedListEntry<Cajon>{
   String name;
   String imgName;
   Heap cllist=Heap();
   Cajon(
     {
       required this.name,
       required this.imgName,
     }
   );
 }

class ListasCajones{
 LinkedList<ListasPrendas> cajones=LinkedList<ListasPrendas>();
 void addPrenda({required String caj, required Clothes clothe}){
   ListasPrendas caj = ListasPrendas();
   cajones.add(caj);
 }
}

 class ListasPrendas extends LinkedListEntry<ListasPrendas>{

 }
 
 class Clothes extends LinkedListEntry<Clothes> {
   String name;
   String imgName;
   String cajon;
   late String pri=name;
   Clothes(
     {
       required this.name,
       required this.imgName,
       required this.cajon
     }
   );

  String get prio => pri;
  set prio (String pr)=>pri=pr;
   
 } 


class Utils{
  static List<Cajon> getCajones(){
    return[
      Cajon(name:"Camisas", imgName:"camisa_cajon"),
      Cajon(name:"Pantalones", imgName:"pantalon_cajon"),
      Cajon(name:"Zapatos", imgName:"zapato_cajon"),
    ];
  }
}
