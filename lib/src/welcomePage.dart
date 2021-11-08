import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/loginPage.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
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
          'GİRİŞ YAP',
    style: GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white ),
        ),
      ),
    ));
  }

  Widget _signUpButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 13),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
            border: Border.all(color: Colors.red, width: 2),
        ),
        child: Text(
          'KAYIT OL',
    style: GoogleFonts.roboto(
    textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500, color: Colors.red ),
        ),
      ),
    ));
  }
  Widget imageHeader() {
    return Container(
        margin: EdgeInsets.only(top: 10, bottom: 20),
        child: Column(
          children: <Widget>[
            Text(
              'Quick login with Touch ID',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/welcome_page_students.jpg'),
            SizedBox(
              height: 10,
              width: 10,
            ),
          ],
        ));
  }

  Widget imageBottom() {
    return Container(
        margin: EdgeInsets.only(top: 20, bottom: 0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset('assets/images/welcome_page_dormitory.jpg'),

            Text(
              'Touch ID',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                imageHeader(),
                SizedBox(
                  height: 20,
                ),
                _submitButton(),
                SizedBox(
                  height: 30,
                ),
                _signUpButton(),
                SizedBox(
                  height: 40,
                ),
                imageBottom(),
              ],
            ),
          ),
      ),
    );
  }


}
