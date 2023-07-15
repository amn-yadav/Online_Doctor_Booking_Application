import 'package:Tic_App/Login.dart';

import 'package:flutter/material.dart';

class welcomepage extends StatelessWidget {
  const welcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image/background.png'),fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Image.asset('assets/image/logo.png',
                        height: 300, width: 150),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // SizedBox(height: 200),
                      Text(
                        "Welcome To TIC",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: SizedBox(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                          //  _navigateToNextScreen(context);
                            Navigator.pushNamed(context, '/petientlogin');
                          },
                          child: const Text(
                            "I Am a Petient",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.indigoAccent,
                              shape: StadiumBorder(),
                              elevation: 20,
                              padding: EdgeInsets.symmetric(vertical: 16)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: SizedBox(
                        height: 60,
                        width: 300,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/doctorappointment');
                          },
                          child: const Text(
                            "I Am a Doctor",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent,
                              shape: StadiumBorder(),
                              elevation: 20,
                              padding: EdgeInsets.symmetric(vertical: 16)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => login()));
  }


}
