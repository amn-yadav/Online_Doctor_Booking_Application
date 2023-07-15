import 'package:flutter/material.dart';
class paymentmode extends StatefulWidget {
  const paymentmode({Key? key}) : super(key: key);

  @override
  State<paymentmode> createState() => _paymentmodeState();
}

class _paymentmodeState extends State<paymentmode> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay Now"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/upi');
                },
                child: const Text("Pay Using UPI"),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/card');
                },
                child: const Text("Pay Using Card"),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
