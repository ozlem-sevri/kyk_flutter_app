import 'package:google_fonts/google_fonts.dart';

class BreakfastData {
  final String name;
  final double price;

  const BreakfastData({required  this.name,required this.price });


//class BreakfastData {
  static const List<BreakfastData> data = [
    BreakfastData(

      name: "Poğaça    ",
      price: 2.0,
    ),
    BreakfastData(

      name: "P.Kızartma",
      price: 3.25,
    ),
BreakfastData(
      //"id" : 3,

      name: "Tost      ",
  price: 6.0,
),
BreakfastData(
     // "id" : 4,
      name: "Zeytin    ",
  price: 1.5,
),
BreakfastData(
      //"id" : 5,

      name: "Sal. Sosis",
  price: 3.25,
),
BreakfastData(
     // "id" : 6,

      name: "Yumurta  ",
  price: 1.5,
),
BreakfastData(
      //"id" : 7,

      name: "Salam     ",
  price: 1.75,
),
BreakfastData(
     // "id" : 8,

      name: "Su Böreği ",
  price: 3.75,
),
BreakfastData(
     // "id" : 9,

      name: "Domates   ",
  price: 1.75,
),
BreakfastData(
    //  "id" : 10,

      name: "Salatalık",
  price: 1.75,
),
  ];
}