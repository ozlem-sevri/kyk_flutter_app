
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'complaintPage.dart';
//import 'Widget/Repair.dart';

class BreakdownComplaint extends StatefulWidget {

  @override
  _BreakdownComplaintState createState() => _BreakdownComplaintState();
}

class _BreakdownComplaintState extends State<BreakdownComplaint> {

  var bottomNavText = GoogleFonts.roboto(fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xFF0000000)) ;

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    Widget child;
    switch (_index) {
      case 0:
      //  return Repair();


        break;
      case 1:
      // return Complaint();

        break;
    }

    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        onTap: (newIndex) => setState(() => _index = newIndex),
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(icon:   SvgPicture.asset("assets/icons/repair_icon.svg", height: 30 , color: Color(
              0xFF000000)), title: Text("Arıza", style: bottomNavText,)),
          BottomNavigationBarItem(icon:  SvgPicture.asset("assets/icons/complaint_icon.svg", height: 30 , color: Color(
              0xFF000000)), title: Text("Şikayet", style: bottomNavText,)),
        ],
      ),
    );
  }
}
