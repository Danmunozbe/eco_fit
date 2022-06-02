import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Heap{
  List<dynamic> A;
  late int length= A.length;
  Heap(this.A);
  
  void BuildHeap(){
      int a=((length-1)/2).round();
      for(int i=a;i>=0;i--){
      SiftDown(i);
    }
  }

  void SiftDown(int i){
    int max=i;
    int lc=LeftChild(i);
    if(lc<length && A[lc]>A[max]){
      max=lc;
    }
    int rc=RightChild(i);
    if(rc<length && A[rc]>A[max]){
      max=rc;
    }
    if(max!=i){
      int temp=A[i];
      A[i]=A[max];
      A[max]=temp;
      SiftDown(max);
    }
  }

  List sort(){
    BuildHeap();
    int a=length;
    for(int i=0;i<a-1;i++){
      int temp=A[0];
      A[0]=A[length-1];
      A[length-1]=temp;
      length--;
      SiftDown(0);
    }    
    if (kDebugMode) {
      print(A);
    }
    return A;
  }
  int LeftChild(int i){
    return 2*i+1;    
  }

  int RightChild(int i){
    return 2*i+2;    
  }
  
}

List HeapSort(List A){
  Heap h= new Heap(A);
  return h.sort();
}