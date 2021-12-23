import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/CartController.dart';
import 'breakfastData.dart';

class BreakfastProducts extends StatelessWidget {
 // const BreakfastProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: BreakfastData.data.length,
            itemBuilder: (BuildContext context, int index){
              return BreakfastProductsCard(index: index);
            },

        )
    );
  }
}

class BreakfastProductsCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  BreakfastProductsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              BreakfastData.data[index].name,
             textAlign: TextAlign.start,
             style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black ),)

          ),
          //SizedBox(width: 40,),
          Text(

                '${BreakfastData.data[index].price}',
             // textAlign: TextAlign.center,
              // " TL",
               style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black ),)

          ),
         // SizedBox(width: 40),
          IconButton(onPressed: () {
            cartController.addProduct(BreakfastData.data[index]);

          },
              icon: Icon(Icons.add_circle, )
          )
        ],
      ),
    );
  }
}

