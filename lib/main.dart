import 'package:Tic_App/payment1stpage.dart';
import 'package:Tic_App/ui/patientsignup.dart';
import 'package:flutter/material.dart';
import 'package:Tic_App/Login.dart';
import 'package:Tic_App/booking.dart';
import 'package:Tic_App/fotgotpasswordpage1.dart';

import 'package:Tic_App/Prescription.dart';
import 'package:Tic_App/WelcomePage.dart';
import 'DateTimeBooking.dart';
import 'DoctorAppointment.dart';
import 'package:Tic_App/UPI.dart';
import 'package:Tic_App/DebitCard.dart';

import 'PaymentMode.dart';

//void main()=> runApp(ticapp());

/*class ticapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.amberAccent,
      theme: ThemeData(

      ),
      home: welcomepage(),
    );
  }
}*/

void main() {
  //setupLocator();
  runApp(booking());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIC',
      routes: {
        '/': (BuildContext context) => welcomepage(),
        '/petientlogin': (BuildContext context) => login(),
        '/signup': (BuildContext context) => patientsignup(),
      },
    );
  }
}
