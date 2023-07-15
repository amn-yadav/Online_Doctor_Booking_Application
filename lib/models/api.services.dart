import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:Tic_App/models/Patient.dart';

class APIServices {
  //static String patientUrl = '192.168.0.106:5001/api/Patient';
 static String patientUrl = 'https://localhost:44370/api/Patient/';
 //static var patientUrl = Uri.parse('https://localhost:44370/api/Patient/');

  static Map<String,String>  header = {
    'Content-type':'application/json',
    'Accept':'application/json'
  };

  static Future FetchPatient() async {
   // return await http.get(patientUrl);

  }
  static Future<bool> SavePatient(Patient p) async {
    var _patient=p.toMap();
    var patientBody=json.encode(_patient);
    var url=Uri.parse('https://localhost:44370/api/Patient/'+"SavePatient");
    var res= await http.post(url ,headers:header, body:patientBody);
    return Future.value(res.statusCode==200? true: false);

  }



}