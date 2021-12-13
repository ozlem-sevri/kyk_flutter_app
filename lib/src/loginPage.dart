import 'package:flutter/material.dart';
import 'package:flutter_login_signup/src/signup.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< Updated upstream
=======
//import 'package:kyk_flutter_app/src/laundryPage.dart';
import 'package:kyk_flutter_app/src/signup.dart';
>>>>>>> Stashed changes


import 'Widget/bezierContainer.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
<<<<<<< Updated upstream
=======
      //  Navigator.push(
           // context, MaterialPageRoute(builder: (context) => LaundryPage()));
>>>>>>> Stashed changes
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
        margin: EdgeInsets.only(top: 20, bottom: 0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 0,
            ),
            Image.asset('assets/images/signIn_page.jpg'),


          ],
        ));
  }

  Widget _entryField(String title, {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
              style: GoogleFonts.roboto()
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              maxLines: 1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Color(0xfff3f3f4),
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
    return Container(
      width: MediaQuery.of(context).size.width,
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
        'GİRİŞ YAP',
        style: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white ),
        ),
      ),
    );
  }

  Widget _header(){
    return Container(
      alignment: Alignment.centerLeft,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
              'GİRİŞ YAP',
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


  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hesabım Yok',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Kayıt Ol',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Email"),
        _entryField("Şifre", isPassword: true),
      ],
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
                  SizedBox(height: 60),
                  _img(),
                  SizedBox(height: 20),
                  _header(),
                  _emailPasswordWidget(),
                  SizedBox(height: 20),
                  _submitButton(),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.centerRight,
                    child: Text('Şifremi Unuttum',
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black ),
                      ),
                    ),
                  ),


                  SizedBox(height: 10),
                  _createAccountLabel(),
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
