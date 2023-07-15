import 'package:flutter/material.dart';

class prescription extends StatefulWidget {
  const prescription({Key? key}) : super(key: key);

  @override
  State<prescription> createState() => _prescriptionState();
}

class _prescriptionState extends State<prescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
    SafeArea(child:  SingleChildScrollView
        (
        child: Column(
          children: [
            Row(

              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        "Present Details:",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Cons.Doctor :')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 300,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Date :')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 145,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('OPD No:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 124,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Present Name:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 293,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Age :')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 145,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('UHID No:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 124,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Sex :')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 145,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Next Appt:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Address:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 332,
                     // height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Case Name:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 310,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Complaints:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 310,
                      //height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('History of \nPresent Illness:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 290,
                     // height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Past History:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 306,
                     // height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Comorbid Conditions:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 248,
                    //  height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Habits/Advice:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 295,
                     // height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),



            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Family History:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 295,
                     // height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Medication Being\nTaken:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 280,
                    //  height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Examination:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 310,
                     // height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Any Known\n Allergies\nDiagnosis:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 320,
                      //height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 10, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    children: [Text('Spl Comment/Next\nFollowUp:')],
                  ),
                ),
                Column(

                  children: [
                    SizedBox(
                      width: 270,
                     // height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 5, // <-- SEE HERE
                        minLines: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),




          ],
        ),

      ),
    ),
    );
  }
}
