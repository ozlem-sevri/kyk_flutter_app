import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/breakfastData.dart';

import 'CartController.dart';
import 'dinnerData.dart';

class CartProduct extends StatelessWidget {
  final CartController controller = Get.find();
   CartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
        height: 600,
        child: ListView.builder(
          itemCount: controller.data.length,
            itemBuilder: (BuildContext context , int index){
            return CartProductCard(
              controller: controller,
              breakfast: controller.data.keys.toList()[index],
              quantity: controller.data.values.toList()[index] ,
              index: index
            );

            }
        ),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  final BreakfastData breakfast;
  final int quantity;
  final int index;

  const CartProductCard({
    Key? key,
    required this.controller,
    required this.breakfast,
    required this.quantity,
    required this.index

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text( breakfast.name,
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black ),)
         ),
          SizedBox(width: 20,),
          IconButton(
              onPressed: () {
                controller.removeProduct(breakfast);
              },
              icon: Icon(Icons.remove_circle)
          ),
          //SizedBox(width: 10,),
          Text('${quantity}',style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.black ),)),
        ],
      ),
    );
  }
}


