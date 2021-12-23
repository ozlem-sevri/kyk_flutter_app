import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaundryDropDown extends StatefulWidget {
  const LaundryDropDown({Key? key}) : super(key: key);

  @override
  _LaundryDropDownState createState() => _LaundryDropDownState();
}

class _LaundryDropDownState extends State<LaundryDropDown> {
  final List<String> days = [
    'Pazartesi',
    'Salı',
    'Çarşamba',
    'Perşembe',
    'Cuma',
    'Cumartesi',
    'Pazar'
  ];
  final List<String> hours = [
    '06:00',
    '08:00',
    '10:00',
    '12:00',
    '14:00',
    '16:00',
    '18:00',
    '20:00',
    '22:00'
  ];

  String selected_day = 'Pazartesi';
  String selected_hour = '06:00';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Gün",
              style: GoogleFonts.roboto(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xfff3f3f4),
              ),
              child: DropdownButton<String>(
                value: selected_day,
                items: days.map((e) {
                  return DropdownMenuItem<String>(

                    child: Text("$e"),
                    value: e,
                  );
                }).toList(),
                onChanged: (val) {
                  setState(() {
                    selected_day = val!;
                  });
                },
                hint: Text("Gün Seçiniz"),
                icon: Icon(Icons.arrow_drop_down),
                isExpanded: true,
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Saat",
              style: GoogleFonts.roboto(),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xfff3f3f4),

              ),
              child: DropdownButton<String>(
                value: selected_hour,
                items: hours.map((e) {
                  return DropdownMenuItem<String>(
                    value: e,
                    child: Text("$e"),
                  );
                }).toList(),
                onChanged: (val) {
                  /*selected_blok = "default";
              selected_room = "default";*/
                  setState(() {
                    selected_hour = val!;
                  });
                },
                hint: Text("Saat Seçiniz"),
                icon: Icon(Icons.arrow_drop_down),
                isExpanded: true,
                style: TextStyle(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ]
      ),
    );
  }
}