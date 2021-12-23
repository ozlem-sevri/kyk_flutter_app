
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/SignUp.dart';
import 'package:kyk_flutter_app/src/selectItem.dart';

import 'Widget/bezierContainer.dart';
import 'dinnerData.dart';

class Dinner extends StatefulWidget {
  Dinner({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _DinnerState createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {

  double totalPrice = 0.0;

  Widget _submitButton() {
    return InkWell(

        child: Container(
          width: MediaQuery.of(context).size.width,
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
            'AKŞAM YEMEĞİ',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white ),
            ),
          ),
        ));
  }



/*
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assests/images/welcome_page_students.jpg'), //   <--- image
      ),
    );
  }*/
  Widget _img() {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset('assets/images/dinner.jpg',width: 70, height: 70),


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
            'AKŞAM YEMEĞİ ',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 30,
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
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Positioned(
                  bottom: -height * .35,
                  right: -MediaQuery.of(context).size.width * .4,
                  child: BezierContainer()),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(height: 20),
                          _header(),
                          SizedBox(width: 20,),
                          _img(),
                        ],
                      ),
                      Text(
                        'MENÜSÜ',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,

                          ),
                        ),
                      ),

                     // _emailPasswordWidget(),
                      SizedBox(height: 40,),
                    //SelectItem(),
                    // dinnerList(),
                     // _submitButton(),
                     /* Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        alignment: Alignment.centerRight,
                        child: Text('Şifremi Unuttum',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black ),
                          ),
                        ),
                      ),*/


                      SizedBox(height: 10),
                     // _createAccountLabel(),
                    ],
                  ),
                ),
              ),
            //  Positioned(top: 40, left: 0, child: _backButton()),
            ],
          ),
        )
    /* body: Container(
       alignment: Alignment.centerLeft,

       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           SizedBox(
             height: 25,
             width: 10,
           ),
           Text(
             'AKŞAM YEMEĞİ MENÜSÜ',
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
     ),*/



















     /* body: ListView.builder(
        itemBuilder: (builder, index) {
          Map data = staticData[index];
          // For the first time selectedFlag[index] will be null
          // so, for that time we will initialize with false
          selectedFlag[index] = selectedFlag[index] ?? false;
          bool? isSelected = selectedFlag[index];

          return ListTile(
            onLongPress: () => onLongPress(isSelected!, index),
            onTap: () => onTap(isSelected!, index),
            title: Text("${data['name']}"),
            subtitle: Text("${data['price']}"),
            leading: _buildSelectIcon(isSelected!, data),  // updated

          );
        },
        itemCount: staticData.length,
      ),*/
      /* body:SingleChildScrollView(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: MediaQuery.of(context).size.height,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              _submitButton(),
              SizedBox(
                height: 30,
              ),

            ],
          ),
        ),
      ),*/
    );
  }



}