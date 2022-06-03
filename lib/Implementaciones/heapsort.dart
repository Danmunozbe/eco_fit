import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/foundation.dart';

class Heap{
  List<Clothes> list=[];
  late int size=0;  
  

  bool get isEmpty => size==0;
  
  void buildHeap(){
      int a=((size-1)/2).round();
      for(int i=a;i>=0;i--){
      siftDown(i);
    }
  }

  void remove(int i){
    list[i].prio="∞";
    extractMax();
  } 

  void extractMax(){
    list[0]=list[size--];
    siftDown(0);
  }
//"∞";
  void siftUp(int i){
    while(i>0 && list.elementAt(padre(i)).prio.compareTo(list.elementAt(i).prio)==-1){
      Clothes temp= list[padre(i)];
      list[padre(i)]=list[i];
      list[i]=temp;
      i=padre(i);
    }
  }

  int padre(int i){
    return ((i-1)/2).round();
  }

  void siftDown(int i){
    int max=i;
    int lc=leftChild(i);
    if(lc<size && list[lc].prio.compareTo(list[max].prio)==1){
      max=lc;
    }
    int rc=rightChild(i);    
    if(rc<size && list[rc].prio.compareTo(list[max].prio)==1){
      max=rc;
    }
    if(max!=i){
      Clothes temp=list.elementAt(i);
      list[i]=list[max];
      list[max]=temp;
      siftDown(max);
    }
  }

  List<Clothes> sort({required List<Clothes> entry}){
    size=entry.length;
    list=entry;
    buildHeap();
    int a=entry.length;
    for(int i=0;i<a-1;i++){
      var temp=entry[0];
      list[0]=list[size-1];
      list[size-1]=temp;
      size--;
      siftDown(0);
    }    
    if (kDebugMode) {
      print(list);
    }
    size=list.length;
    return list;
  }
  int leftChild(int i){
    return 2*i+1;    
  }

  int rightChild(int i){
    return 2*i+2;    
  }
  void addToHeap({required clothe}){
    if(size==list.length){
      list.add(clothe);
    }else{
      list[size]=clothe;
    }    
    size++;
    siftUp(size-1);
  }
  
}

List heapSort(List list){
  Heap h= Heap();
  return h.sort(entry: h.list);
}