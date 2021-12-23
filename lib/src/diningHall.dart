
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/DinnerCatalog.dart';
import 'package:kyk_flutter_app/src/SignUp.dart';
import 'package:kyk_flutter_app/src/WelcomePage.dart';
import 'package:kyk_flutter_app/src/kahvalti.dart';
import 'package:flutter/material.dart';
import 'dinnerPage.dart';

class DiningHall extends StatefulWidget {

  @override
  _DiningHallState createState() => _DiningHallState();
}

class _DiningHallState extends State<DiningHall> {

    Widget build(BuildContext context){
      return Scaffold(
          appBar: AppBar(

          backgroundColor: Colors.deepOrangeAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)) ),
          centerTitle: true,


          title: Text("YEMEKHANE",
          style: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black ),),),
          leading: Padding(
            padding: const EdgeInsets.all(0.8),),),

        resizeToAvoidBottomInset: false,
        body:SingleChildScrollView(
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
             // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30,),
                _img(),
                SizedBox(height: 40,),

                _breakfastButton(),
                SizedBox(
                  height: 40,
                ),
                _dinnerButton(),

               // imageBottom(),
              ],
            ),
          ),
        ),

      );
    }
    Widget _breakfastButton() {
      return InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) =>  CatalogScreen()));
          },
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
              'KAHVALTI',
              style: GoogleFonts.roboto(
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white ),
              ),
            ),
          ));
    }
    Widget _dinnerButton() {
      return InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DinnerCatalogScreen()));
          },
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
    Widget _img() {
      return Container(
          margin: EdgeInsets.only(top: 10, bottom: 20),
          child: Column(
            children: <Widget>[

              /*SizedBox(
                height: 20,
              ),*/
              SvgPicture.asset("assets/icons/dinnerTable.svg", height: 325 ,),
             // Image.asset('assets/images/table.jpg',height: 350,),
              SizedBox(
                height: 10,
                width: 10,
              ),
            ],
          ));
    }
  /*var bottomNavText = GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xFF0000000)) ;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
      return CatalogScreen();
      // child =  ;
        break;
      case 1:
        return DinnerCatalogScreen();
        //  child = ;

        break;
    }

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon:   SvgPicture.asset("assets/icons/breakfast_icon.svg", height: 30 , color: Color(
              0xFF000000)), title: Text("Kahvaltı", style: bottomNavText,)),
          BottomNavigationBarItem(icon:  SvgPicture.asset("assets/icons/dinner_icon.svg", height: 30 , color: Color(
              0xFF000000)), title: Text("Akşam Yemeği", style: bottomNavText,)),
        ],
      ),
    );
  }*/
}