import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CartController.dart';
import 'dinnerData.dart';

class DinnerCartProduct extends StatelessWidget {
  final CartController controller = Get.find();
  DinnerCartProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => SizedBox(
        height: 600,
        child: ListView.builder(
            itemCount: controller.dinnerdata.length,
            itemBuilder: (BuildContext context , int index){
              return CartDinnerCard(
                  controller: controller,
                  breakfast: controller.dinnerdata.keys.toList()[index],
                  quantity: controller.dinnerdata.values.toList()[index] ,
                  index: index
              );

            }
        ),
      ),
    );
  }
}
class CartDinnerCard extends StatelessWidget {
  final CartController controller;
  final DinnerData breakfast;
  final int quantity;
  final int index;

  const CartDinnerCard({
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text( breakfast.name,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black ),)
          ),
         // SizedBox(width: 20,),
          IconButton(
              onPressed: () {
                controller.removeDinner(breakfast);
              },
              icon: Icon(Icons.remove_circle)
          ),
          //SizedBox(width: 10,),
          Text('${quantity}'),
        ],
      ),
    );
  }
}