
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/DinnerCatalog.dart';
import 'package:kyk_flutter_app/src/SignUp.dart';
import 'package:kyk_flutter_app/src/WelcomePage.dart';
import 'package:kyk_flutter_app/src/Widget/Repair.dart';
import 'package:kyk_flutter_app/src/complaintPage.dart';
import 'package:kyk_flutter_app/src/kahvalti.dart';
import 'package:flutter/material.dart';
import 'dinnerPage.dart';

class BreakdownComplaint extends StatefulWidget {
  const BreakdownComplaint({Key? key}) : super(key: key);

  @override
  _BreakdownComplaintState createState() => _BreakdownComplaintState();
}

class _BreakdownComplaintState extends State<BreakdownComplaint> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.deepOrangeAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
        centerTitle: true,


        title: Text("ARIZA-ŞİKAYET",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.black),),),
        leading: Padding(
          padding: const EdgeInsets.all(0.8),),),

      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery
              .of(context)
              .size
              .height,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30,),
              _img(),
              SizedBox(height: 40,),

              _breakdownButton(),
              SizedBox(
                height: 40,
              ),
              _complaintButton(),

              // imageBottom(),
            ],
          ),
        ),
      ),

    );
  }

  Widget _breakdownButton() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Repair()));
        },
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          padding: EdgeInsets.symmetric(vertical: 13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xffdf8e33).withAlpha(100),
                    offset: Offset(2, 4),
                    blurRadius: 12,
                    spreadRadius: 2)
              ],
              color: Colors.red),
          child: Text(
            'ARIZA',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ));
  }

  Widget _complaintButton() {
    return InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Complaint()));
        },
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          padding: EdgeInsets.symmetric(vertical: 13),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Color(0xffdf8e33).withAlpha(100),
                    offset: Offset(2, 4),
                    blurRadius: 12,
                    spreadRadius: 2)
              ],
              color: Colors.red),
          child: Text(
            'ŞİKAYET',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ));
  }

  Widget _img() {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[

            SvgPicture.asset("assets/icons/hypothesis.svg", height: 325,),
            // Image.asset('assets/images/table.jpg',height: 350,),
            SizedBox(
              height: 10,
              width: 10,
            ),
          ],
        ));
  }
}