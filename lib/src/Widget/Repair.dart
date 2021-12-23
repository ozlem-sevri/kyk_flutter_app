
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/MainMenu.dart';
import 'package:kyk_flutter_app/src/SignUp.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class Repair extends StatefulWidget {
  Repair({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _RepairState createState() => _RepairState();
}



class _RepairState extends State<Repair> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Geri',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500 ),

              ),
            ),

          ],
        ),
      ),
    );
  }


  Widget _img() {
    return Container(
        alignment: Alignment.centerRight,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset('assets/images/repair.png', height: 120,),


          ],
        ));
  }

  Widget _header(){
    return Container(
      alignment: Alignment.centerLeft,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'ARIZA',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w800,
                color: Colors.black,

              ),
            ),
          ),

        ],
      ),
    );
  }


  Widget _entryField(String title, String imgPath) {
    var cardTextStyle = GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black) ;

    return Container(

      width: 250,
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Color(0xd7ececec),
      child: Column(
        children: <Widget>[

          Card(
            margin: EdgeInsets.symmetric(vertical: 20),
            color: Color(0xffececec),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround ,
              children: <Widget>[
                Image.asset(imgPath, width: 70,),

                Text(title, style: cardTextStyle,),
              ],

            ),

          ),
        ],
      ),
    );
  }





  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.shade200,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2)
              ],
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white, Colors.white])),
          child: Stack(
            children: <Widget>[

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 100),
                      _header(),
                      //      _img(),

                      SizedBox(height: 20),
                      _entryField("Elektrik Arızaları", "assets/images/socket.png"),
                      SizedBox(height: 20),
                      _entryField("Tesisat Arızaları", "assets/images/water-faucet.png"),
                      SizedBox(height: 20),
                      _entryField("Eşya Arızaları", "assets/images/dormitory.png"),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        ));
  }
}