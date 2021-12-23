
class DinnerData {
  final String name;
  final double price;

  const DinnerData({required  this.name,required this.price });

  static const List<DinnerData> data = [
    DinnerData(

      name: "Pirinç Pilavı  ",
      price: 4.0,
    ),
    DinnerData(

      name: "Bulgur Pilavı  ",
      price: 4.0,
    ),
    DinnerData(
      //"id" : 3,

      name: "Mantı               ",
      price: 6.0,
    ),
    DinnerData(
      // "id" : 4,
      name: "Salata              ",
      price: 3.75,
    ),
    DinnerData(
      //"id" : 5,

      name: "Makarna           ",
      price: 4.5,
    ),
    DinnerData(
      // "id" : 6,

      name: "Patlıcan Oturtma",
      price: 5.5,
    ),
    DinnerData(
      //"id" : 7,

      name: "Arnavut Ciğeri     ",
      price: 6.75,
    ),
    
  ];
}
