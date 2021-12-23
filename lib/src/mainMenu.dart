import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kyk_flutter_app/src/SignUp.dart';
//import 'package:kyk_flutter_app/src/breakdownComplaintPage.dart';
import 'package:kyk_flutter_app/src/diningHall.dart';
import 'package:kyk_flutter_app/src/selectItem.dart';
import 'package:kyk_flutter_app/src/signup.dart';
import 'package:kyk_flutter_app/src/kahvalti.dart';

import 'breakdownComplaint.dart';
import 'dinnerPage.dart';
//import 'kahvalti.dart';
import 'laundryPage.dart';

class MainMenu extends StatefulWidget {

  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    final height = MediaQuery.of(context).size.height;

    var cardTextStyle = GoogleFonts.roboto(fontSize: 20, fontWeight: FontWeight.w700, color: Color(0xFFFFFFFFF)) ;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget> [
          Container(

            height: size.height * .3,
            decoration: BoxDecoration(

            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Expanded(child:   GridView.count(mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    primary: false,
                    crossAxisCount: 2,
                    children: <Widget>[
                      SizedBox(height: 0),
                      _img(),
                      SizedBox(height: 20),
                      _header(),
                      Card(
                        color: Color(0xFF77A3E4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        elevation: 10,
                        child: GestureDetector(

                          onTap: () {
                            Navigator.push (
                                context, MaterialPageRoute(builder: (context) =>DiningHall()));
                          },
                          //child: Card(),
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/dining_hall.svg", height: 100 ,color: Color(
                                  0xFFFFFFFF),),
                              Text("Yemekhane", style: cardTextStyle, ),

                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: Color(0xFF77A3E4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        elevation: 10,
                        child: GestureDetector(

                          onTap: () {
                            Navigator.push (
                                context, MaterialPageRoute(builder: (context) => LaundryPage()));
                          },
                          //child: Card(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/laundry.svg", height: 100 , color: Color(
                                  0xFFFFFFFF)),
                              Text("Çamaşırhane", style: cardTextStyle, ),
                            ],

                          ),

                        ),


                      ),

                      Card(
                        color: Color(0xFF77A3E4),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        elevation: 10,
                        child: GestureDetector(

                          onTap: () {
                            Navigator.push (
                                context, MaterialPageRoute(builder: (context) => BreakdownComplaint()));
                          },
                          //child: Card(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/repair.svg", height: 100 , color: Color(
                                  0xFFFFFFFF)),
                              Text("Arıza/Şikayet", style: cardTextStyle, ),
                            ],
                          ),

                        ),


                      ),

                      Card(
                        color: Color(0xFF77A3E4),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        elevation: 10,
                        child: GestureDetector(

                          onTap: () {
                            Navigator.push (
                                context, MaterialPageRoute(builder: (context) => MainMenu()));
                          },
                          //child: Card(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/megaphone.svg", height: 100 , color: Color(
                                  0xFFFFFFFF)),
                              Text("Duyurular", style: cardTextStyle, ),
                            ],
                          ),

                        ),
                      ),

                      Card(
                        color: Color(0xFF77A3E4),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        elevation: 10,
                        child: GestureDetector(

                          onTap: () {
                            Navigator.push (
                                context, MaterialPageRoute(builder: (context) => MainMenu()));
                          },
                          //child: Card(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/link.svg", height: 100 , color: Color(
                                  0xFFFFFFFF)),
                              Text("Yönlendirmeler", style: cardTextStyle, ),
                            ],
                          ),

                        ),
                      ),

                      Card(
                        color: Color(0xFF77A3E4),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ) ,
                        elevation: 10,
                        child: GestureDetector(

                          onTap: () {
                            Navigator.push (
                                context, MaterialPageRoute(builder: (context) => MainMenu()));
                          },
                          //child: Card(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: <Widget>[
                              SvgPicture.asset("assets/icons/user.svg", height: 100 , color: Color(
                                  0xFFFFFFFF)),
                              Text("Profil", style: cardTextStyle, ),
                            ],
                          ),

                        ),
                      ),
                    ],)
                  ),
                ],
              ),
            ),
          ),
        ],

      ),
    );
  }
}

Widget _header(){
  return Container(
    alignment: Alignment.centerLeft,

    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'KYK APP',
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

Widget _img() {
  return Container(
      margin: EdgeInsets.only(top: 20, bottom: 0),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 0,
          ),
          Image.asset('assets/images/main_menu_img.jpg'),


        ],
      ));
}
