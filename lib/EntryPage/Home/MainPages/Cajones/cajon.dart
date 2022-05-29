 class Cajon{
   String name;
   String imgName;
   List<Clothes> subclothes;
   Cajon(
     {
       required this.name,
       required this.imgName,
       required this.subclothes
     }
   );
 }
 
 class Clothes {
   String name;
   String imgName;
   int priority;
   String cajon;
   Clothes(
     {
       required this.name,
       required this.imgName,
       required this.priority,
       required this.cajon
     }
   );
 } 


class Utils{
  static List<Cajon> getCajones(){
    return[
      Cajon(name:"Camisas", imgName:"camisa_cajon", subclothes: []),
      Cajon(name:"Pantalones", imgName:"pantalon_cajon", subclothes: []),
      Cajon(name:"Zapatos", imgName:"zapato_cajon", subclothes: []),
    ];
  }
}