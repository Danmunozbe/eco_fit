import 'package:eco_fit/EntryPage/Home/MainPages/Cajones/cajon.dart';
import 'package:flutter/foundation.dart';

class Heap{
  List<Clothes> list;
  late int size=list.length;
  
  Heap({this.list=const []});

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
    list[1]=list[size--];
    siftDown(1);
  }
//"∞";
  void siftUp(int i){
    while(list.elementAt(padre(i)).prio.compareTo(list.elementAt(1).prio)>1 && i>0){
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
    if(lc<size && list.elementAt(lc).prio.compareTo(list.elementAt(max).prio)==1){
      max=lc;
    }
    int rc=rightChild(i);    
    if(rc<size && list.elementAt(rc).prio.compareTo(list.elementAt(max).prio)==1){
      max=rc;
    }
    if(max!=i){
      Clothes temp=list.elementAt(i);
      list[i]=list[max];
      list[max]=temp;
      siftDown(max);
    }
  }

  List sort({required List entry}){
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
    return list;
  }
  int leftChild(int i){
    return 2*i+1;    
  }

  int rightChild(int i){
    return 2*i+2;    
  }
  void addToHeap({required clothe}){
    list[size++]=clothe;
    siftUp(size-1);
  }
  
}

List heapSort(List list){
  Heap h= Heap();
  return h.sort(entry: h.list);
}