import 'package:flutter/material.dart';



class forgotpasswordpage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
          _header(context),
          _inputFields(context),

        ],),
      ),
    ));
  }
  _header(context){
    return Column(
      children: [
        Text("Forgot password",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),

      ],
    );
  }
  _inputFields(context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: "Enter Mobile/ Email address ",
                fillColor: Theme
                    .of(context)
                    .primaryColor
                    .withOpacity(0.1),
                filled: true,
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none)
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "Enter OTP",
                fillColor: Theme
                    .of(context)
                    .primaryColor
                    .withOpacity(0.1),
                filled: true,
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none)
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]
    );
  }
}
