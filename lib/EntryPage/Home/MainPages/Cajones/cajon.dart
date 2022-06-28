 import 'dart:collection';

import 'package:eco_fit/Implementaciones/heapsort.dart';

class Cajon extends LinkedListEntry<Cajon>{
   String name;
   String imgName;
   List<Clothes> cllist=[];
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
  static Cajon camisas=Cajon(name:"Camisas", imgName:"camisa_cajon");
  static Cajon pantalons=Cajon(name:"Pantalones", imgName:"pantalon_cajon");
  static Cajon zapatos=Cajon(name:"Zapatos", imgName:"zapato_cajon");
  
    
  static List<Cajon> getCajones(){
    return[
      camisas,
      pantalons,
      zapatos
    ];      
  }
}
