class Student {
  final String name;
  final String surname;
  final String city;
  final String dormitory_name;
  final int room;
  Student({required this.name,required this.surname,required this.city,required this.dormitory_name,required this.room,});

  factory Student.fromJson(Map<String,dynamic> json){
    return Student(
      name:json["name"],
      surname: json["surname"],
      city:json["city"],
      dormitory_name:json["dormitory_name"],
      room:json["room"]
    );
  }
}