import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDown extends StatefulWidget {

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<String> city = [ 'Kocaeli'];
  final List<String> Kocaeli_dormitory = ['Gebze Kyk Yurdu'];
  final List<String> blok = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
  final List<String> room = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

   String selected_city = 'Kocaeli' ;
   String selected_dormitory = 'Gebze Kyk Yurdu' ;
   String selected_blok = 'A' ;
   String selected_room = '1' ;

  List<String> dormitory = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Şehir",
            style: GoogleFonts.roboto(),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Color(0xfff3f3f4),
            ),
           child:  DropdownButton<String>(
             value: selected_city,
              items: city.map((e) {
                return DropdownMenuItem<String>(

                  child: Text("$e"),
                  value: e,
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selected_city = val!;
                });
              },
             hint: Text("Şehir Seçiniz"),
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Kyk Adı",
            style: GoogleFonts.roboto(),
          ),
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xfff3f3f4),

            ),
            child: DropdownButton<String>(
              value: selected_dormitory,
              items: Kocaeli_dormitory.map((e) {
                return DropdownMenuItem<String>(
                  value: e,
                  child: Text("$e"),
                );
              }).toList(),
              onChanged: (val) {
                /*selected_blok = "default";
              selected_room = "default";*/
                setState(() {
                  selected_dormitory = val!;
                });
              },
              hint:  Text("Yurt Seçiniz"),
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Blok",
            style: GoogleFonts.roboto(),
          ),
         Container(

           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(25)),
             color: Color(0xfff3f3f4),
              ),
          child: DropdownButton<String>(
             value: selected_blok,
            hint: Text("Blok Seçiniz"),
            //value: selected_blok,
             items: blok.map((e) {
               return DropdownMenuItem<String>(
                 value: e,
                 child: Text("$e"),
               );
             }).toList(),

             onChanged: (val) {
               // selected_room = "default";
               setState(() {
                 selected_blok = val!;
               });
             },


             icon: Icon(Icons.arrow_drop_down),
             isExpanded: true,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),
           ),
         ),

          SizedBox(
            height: 20,
          ),
         Text(
           "Oda Numarası",
            style: GoogleFonts.roboto(),
         ),
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.all(Radius.circular(25)),
             color: Color(0xfff3f3f4),
           ),
           child:DropdownButton<String>(
             value: selected_room,
             items: room.map((e) {
               return DropdownMenuItem<String>(
                 value: e,
                 child: Text("$e"),
               );
             }).toList(),
             onChanged: (val) {
               setState(() {
                 selected_room = val!;
               });
             },
             hint: Text("Oda Seçiniz"),
             icon: Icon(Icons.arrow_drop_down),
             isExpanded: true,
             style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),
           ),
         ),

        ],
      ),
    );
  }
/*
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('selected_room', selected_room));
  }
}*/
}
