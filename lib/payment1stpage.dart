import 'package:flutter/material.dart';

class paymentinterface extends StatefulWidget {
  const paymentinterface({Key? key}) : super(key: key);

  @override
  State<paymentinterface> createState() => _paymentinterfaceState();
}

class _paymentinterfaceState extends State<paymentinterface> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Paytm Integration"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField( keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.currency_rupee),
                  hintText: "Enter payable amount",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 50,
              child:  ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/payy');
                },
                child: Text(
                  "Pay Now",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(vertical: 16)),
              ),
              ),

          ],
        ),
      ),
    );
  }


}
