
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/MainMenu.dart';
//import 'package:kyk_flutter_app/src/SignUp.dart';

class Complaint extends StatefulWidget {
  Complaint({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ComplaintState createState() => _ComplaintState();
}



class _ComplaintState extends State<Complaint> {
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
            Image.asset('assets/images/complaint.png', height: 120,),


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
            'ŞİKAYET',
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


  Widget _entryField(String title) {
    return Container(
      width: 450,
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Color(0xff85aed2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            maxLines: 20,
            decoration: InputDecoration(
                fillColor: Color(0xff85aed2),
                filled: true),
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainMenu   ()));
        },
        child:Container(
          width: 200,
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
                  colors: [Color(0xFFF274472), Color(0xFFF274472)])),
          child: Text(
            'GÖNDER',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white ),
            ),
          ),
        )
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
                      _img(),

                      SizedBox(height: 30),
                      _entryField(" "),
                      SizedBox(height: 30),

                      _submitButton(),
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