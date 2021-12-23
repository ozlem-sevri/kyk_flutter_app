import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/CartController.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
   CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => Container(
        padding: const EdgeInsets.symmetric(horizontal: 75),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Toplam",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black ),)
            ),
            Text(

                "${controller.total}",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black ),)
            ),
          ],
        ),
      ),
    );
  }
}
