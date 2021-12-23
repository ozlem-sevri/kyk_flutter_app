import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/students.dart';
import 'package:http/http.dart' as http;

class StudentProvider with ChangeNotifier{
  List<Student> _students = [];

  List<Student> get students {
    return [..._students];
  }

  fetchTasks() async{
    final url = 'http://127.0.0.1:8000/api/student/?format=json';
    final response = await http.get(url);
    if(response.statusCode == 200){
        var data = json.decode(response.body) as List;
        _students = data.map<Student>((json) => Student.fromJson(json)).toList();
    }
  }
}
