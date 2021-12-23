import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/CartController.dart';
import 'dinnerData.dart';


class DinnerProducts extends StatelessWidget {
  // const BreakfastProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
          itemCount: DinnerData.data.length,
          itemBuilder: (BuildContext context, int index){
            return DinnerProductsCard(index: index);
          },

        )
    );
  }
}

class DinnerProductsCard extends StatelessWidget {
  final cartController = Get.put(CartController());
  final int index;
  DinnerProductsCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              DinnerData.data[index].name,
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black ),)

          ),
          Text(
              '${DinnerData.data[index].price}',
              // " TL",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black ),)

          ),
          IconButton(onPressed: () {
            cartController.addDinner(DinnerData.data[index]);

          },
              icon: Icon(Icons.add_circle, ))
        ],
      ),
    );
  }
}
