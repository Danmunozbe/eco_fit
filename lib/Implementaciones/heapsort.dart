import 'package:flutter/foundation.dart';

class Heap{
  List<dynamic> A;
  late int length= A.length;
  Heap(this.A);
  
  void buildHeap(){
      int a=((length-1)/2).round();
      for(int i=a;i>=0;i--){
      siftDown(i);
    }
  }

  void siftDown(int i){
    int max=i;
    int lc=leftChild(i);
    if(lc<length && A[lc]>A[max]){
      max=lc;
    }
    int rc=rightChild(i);
    if(rc<length && A[rc]>A[max]){
      max=rc;
    }
    if(max!=i){
      int temp=A[i];
      A[i]=A[max];
      A[max]=temp;
      siftDown(max);
    }
  }

  List sort(){
    buildHeap();
    int a=length;
    for(int i=0;i<a-1;i++){
      int temp=A[0];
      A[0]=A[length-1];
      A[length-1]=temp;
      length--;
      siftDown(0);
    }    
    if (kDebugMode) {
      print(A);
    }
    return A;
  }
  int leftChild(int i){
    return 2*i+1;    
  }

  int rightChild(int i){
    return 2*i+2;    
  }
  
}

List heapSort(List A){
  Heap h= Heap(A);
  return h.sort();
}