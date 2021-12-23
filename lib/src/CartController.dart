import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:kyk_flutter_app/src/breakfastData.dart';
//import 'breakfast.dart';
import 'breakfastData.dart';
import 'dinnerData.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  var _dinner = {}.obs;

  void addProduct (BreakfastData data){
    if(_products.containsKey(data)){
      _products[data] += 1;
    }
    else
      _products[data] = 1;

    Get.snackbar("Kahvaltılık eklendi", "${data.name} eklediniz",
     // snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
      //backgroundColor: Colors.deepOrangeAccent,
    );
  }
  void addDinner (DinnerData data){
    if(_dinner.containsKey(data)){
      _dinner[data] += 1;
    }
    else
      _dinner[data] = 1;

    Get.snackbar("Akşam yemeği eklendi", "${data.name} eklediniz",
      //snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),

    );
  }
  void removeProduct(BreakfastData data){
    if(_products.containsKey(data) && _products[data] == 1)
      {
        _products.removeWhere((key, value) => key == data);
      }
    else
      _products[data] -=1;
  }
  void removeDinner(DinnerData data){
    if(_dinner.containsKey(data) && _dinner[data] == 1)
    {
      _dinner.removeWhere((key, value) => key == data);
    }
    else
      _dinner[data] -=1;
  }

  get data => _products;

  get subTotal => _products.entries.map((data) => data.key.price * data.value).toList();
  
  get total => _products.entries.map((data) => data.key.price * data.value).toList().reduce((value, element) => value + element).toStringAsFixed(2);

  get dinnerdata => _dinner;

  get dinnersubTotal => _dinner.entries.map((dinnerdata) => dinnerdata.key.price * dinnerdata.value).toList();

  get dinnertotal => _dinner.entries.map((dinnerdata) => dinnerdata.key.price * dinnerdata.value).toList().reduce((value, element) => value + element).toStringAsFixed(2);


}