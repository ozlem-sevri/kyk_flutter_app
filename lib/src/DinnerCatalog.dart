
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/cartScreen.dart';
import 'package:kyk_flutter_app/src/DinnerProducts.dart';

import 'DinnerCartScreen.dart';
import 'breakfast.dart';
import 'dinnerPage.dart';

class DinnerCatalogScreen extends StatelessWidget {
  const DinnerCatalogScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  toolbarHeight: 50,
        // leadingWidth: 70,



        backgroundColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)) ),
        centerTitle: true,


        title: Text("AKŞAM YEMEĞİ MENÜSÜ",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black ),

          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Image.asset(
            "assets/images/dinner.jpg",alignment: Alignment.topRight,
          ),
        ),

      ),
      body: SafeArea(
        child: Column(
          children: [
            DinnerProducts(),
            ElevatedButton(
              // onPressed: () => Get.to(() => CartScreen()),
                onPressed: () => Get.to(() => DinnerCartScreen()),
                child: Text("Hesap'a Git!")
            )
          ],
        ),
      ),
    );
  }

}