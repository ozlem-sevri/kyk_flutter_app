import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/cartTotal.dart';

import 'dinnerCartProducts.dart';
import 'dinnerCartTotal.dart';

//import 'package:kyk_flutter_app/src/cartProducts.dart';

class DinnerCartScreen extends StatelessWidget {
  const DinnerCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //  toolbarHeight: 50,
          // leadingWidth: 70,



          backgroundColor: Colors.deepOrangeAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)) ),
          centerTitle: true,


          title: Text("SİPARİŞLERİM",
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black ),

            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.all(0.8),

          ),

        ),
        body: Column(
          children: [
            DinnerCartProduct(),
            DinnerCartTotal()
          ],
        )
    );
  }
}