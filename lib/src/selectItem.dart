/*

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dinnerData.dart';

class SelectItem extends StatefulWidget {
  const SelectItem({Key? key}) : super(key: key);

  @override
  _SelectItemState createState() => _SelectItemState();
}

class _SelectItemState extends State<SelectItem> {
  List<Map> staticData = MyData.data;
  Map<int, bool> selectedFlag = {};
  bool isSelectionMode = false;
  double total = 0.0;

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        //  toolbarHeight: 50,
        // leadingWidth: 70,



        backgroundColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)) ),
        centerTitle: true,


        title: Text("AKŞAM YEMEĞİ MENÜSÜ",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black ),

          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(0.8),
          child: Image.asset(
            "assets/images/dinner.jpg",alignment: Alignment.topRight,
          ),



        ),

      ),
      body: ListView.builder(
        itemBuilder: (builder, index) {
          Map data = staticData[index];
          // For the first time selectedFlag[index] will be null
          // so, for that time we will initialize with false
          selectedFlag[index] = selectedFlag[index] ?? false;
          bool? isSelected = selectedFlag[index];

          return ListTile(
            onLongPress: () => onLongPress(isSelected!, index),
            onTap: () => onTap(isSelected!, index),
            title: Text("${data['name']}", style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize:18, fontWeight: FontWeight.w500, color: Colors.black ),

            ),),
            subtitle: Text("${data['price']} TL", style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black ),

            ),),

            leading: _buildSelectIcon(isSelected!, data,index),  // updated
           // calculate(isSelected!, data, index),
          );
        },
        itemCount: staticData.length,
      ),
    );
  }

  void onLongPress(bool isSelected, int index) {
    setState(() {
      selectedFlag[index] = !isSelected;
      // If there will be any true in the selectionFlag then
      // selection Mode will be true
      isSelectionMode = selectedFlag.containsValue(true);
    });
  }

  Widget _buildSelectIcon(bool isSelected, Map data, int index) {
    if (isSelectionMode) {

      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,

      );
    } else {
      return Icon(
        isSelected ? Icons.check_box : Icons.check_box_outline_blank,
        color: Theme.of(context).primaryColor,

      );
    }
  }
  void onTap(bool isSelected, int index) {
    if (isSelectionMode) {
      setState(() {
        selectedFlag[index] = !isSelected;
        isSelectionMode = selectedFlag.containsValue(true);

      });
    } else {
      // Open Detail Page
    }
  }
  void calculate(bool isSelected, Map data,int index){
    if(isSelected){ total = total + data[index];}

  }


}*/
