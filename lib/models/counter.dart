import 'package:flutter/material.dart';
import 'package:flutterapp2/main.dart';

class Counter extends ChangeNotifier
{
  int counter=0;
  //Counter(this._counter);
  void increment()
  {
    counter+=1;
    //print("The value of counter is $_counter");
    notifyListeners();
  }
  void decrement()
  {
    counter-=1;
    notifyListeners();
  }

}