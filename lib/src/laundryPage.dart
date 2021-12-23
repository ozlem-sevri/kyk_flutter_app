import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/laundryPageDropDown.dart';

class LaundryPage extends StatefulWidget {
  const LaundryPage({Key? key}) : super(key: key);

  @override
  _LaundryPageState createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> {
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
        child: Padding(
            padding: EdgeInsets.only(bottom: 25, left: 27 ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/washing_machine.png', width: 140, height: 300),
                  SizedBox(width: 9,),
                  Image.asset('assets/images/clothes.png', width: 140, height: 300),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                  ),
                  Spacer(),
                  //Text("03.03.2020"),
                ]
            )
        )
    );
  }
  Widget _header(){
    return Container(
      alignment: Alignment.center,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            'ÇAMAŞIRHANE',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w800,
                color: Colors.black,

              ),
            ),
          ),
          SizedBox(
            height: 0,
          )
        ],
      ),
    );
  }
  Widget _submitButton() {
    return Container(
      width: 180,
      //width: MediaQuery.of(context).size.width ,
      padding: EdgeInsets.symmetric(vertical: 15),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.red, Colors.red])),
      child: Text(
        'Randevu Oluştur',
        style: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        //  toolbarHeight: 50,
        // leadingWidth: 70,



        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)) ),
        centerTitle: true,

        title: Text("ÇAMAŞIRHANE",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black ),

          ),
        ),

      ),
      body: Container(
        height: height,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(height: 50),
                    // _header(),
                    SizedBox(
                      height: 80,
                    ),
                    LaundryDropDown(),
                    SizedBox(
                      height: 80,
                    ),
                    _submitButton(),
                    SizedBox(height: 0),
                    _img(),
                  ],
                ),
              ),
            ),
            //Positioned(top: 40, left: 0, child: _backButton()),
          ],
        ),
      ),
    );

  }
}
