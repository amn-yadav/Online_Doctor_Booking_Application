import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: camel_case_types
class rating extends StatefulWidget {
  const rating({super.key});

  @override
  State<rating> createState() => ratingState();
}

// ignore: camel_case_types
class ratingState extends State<rating> {
  double fulRating = 0;
  double halfRating = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // ignore: prefer_const_constructors
            Text('Rating',
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 30)),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.indigo, width: 5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/doctor.jpg',
                  height: 170,
                  width: 170,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Doctor's Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                readOnly: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Specification",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                readOnly: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Degree",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                readOnly: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: "Experience",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
                readOnly: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Remarks",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
            ),
            Center(
              child: RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                allowHalfRating: true,
                unratedColor: Colors.grey,
                itemCount: 5,
                itemSize: 40,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                updateOnDrag: true,
                // ignore: prefer_const_constructors
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (ratingvalue) {
                  setState(() {
                    fulRating = ratingvalue;
                    halfRating = ratingvalue;
                  });
                },
              ),
            ),
            Text(
              'Rating: $fulRating',
              style:
                  const TextStyle(fontWeight: FontWeight.w300, fontSize: 24.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
