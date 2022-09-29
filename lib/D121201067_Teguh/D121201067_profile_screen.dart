import 'package:flutter/material.dart';

class D121201067_profile_screen extends StatelessWidget {
  const D121201067_profile_screen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("D121201067_Teguh Profile Screen"),
      ),

      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Baris 1 kolom 1: Gambar
            Container(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 115,
                      width: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage('assets/images/foto.png'),
                          fit: BoxFit.fitHeight,
                        ),
                        // border: Border.all(
                        //   width: 0,
                        // ),
                      ),
                    ),
                  ),


                  //Baris 1 kolom 2: kumpulan 3 baris
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            // margin: EdgeInsets.symmetric(vertical: 20),
                            // alignment: Alignment.centerLeft,
                            // decoration: BoxDecoration(
                            //   border: Border.all(),
                            // ),
                            child: Text(
                              "Teguh Ikhtiar Rhamdanu",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            // decoration: BoxDecoration(
                            //   border: Border.all(),
                            // ),
                            child: Text(
                              "Membaca",
                              // textDirection: TextDirection.ltr,
                              // textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                // padding: EdgeInsets.only(right: ),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                // alignment: Alignment.centerLeft,
                                // decoration: BoxDecoration(
                                //   border: Border.all(),
                                // ),
                                child: Icon(
                                  Icons.cake,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              ),
                              //
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                // padding: EdgeInsets.only(right: ),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                // alignment: Alignment.centerLeft,
                                // decoration: BoxDecoration(
                                //   border: Border.all(),
                                // ),
                                child: Icon(
                                  Icons.cake,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              ),
                              //
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                // padding: EdgeInsets.only(right: ),
                                // margin: EdgeInsets.symmetric(vertical: 20),
                                // alignment: Alignment.centerLeft,
                                // decoration: BoxDecoration(
                                //   border: Border.all(),
                                // ),
                                child: Icon(
                                  Icons.cake,
                                  color: Colors.red,
                                  size: 50,
                                ),
                              ),
                              //             ],
                              //           ),


                            ],
                          ),
                        ],
                      ),
                    ],
                  ),



                ],
              ),
            ),

// Baris ke kolom 2: Teks pendek
            Container(
              // padding: EdgeInsets.only(left: 400),
              margin: const EdgeInsets.only(top: 20),
              // decoration: BoxDecoration(
              //   border: Border.all(),
              // ),
              child: Text(
                "Belajar Flutter",
                textAlign: TextAlign.justify,
              ),
            ),
            // Baris ke 3 kolom 3: Teks panjang
            Flexible(
              child: Container(
                // padding: EdgeInsets.only(left: 400),
                margin: const EdgeInsets.only(top: 20),
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Text(
                  "Membuat aplikasi dengan desain yang menarik di berbagai platform, kini semakin mudah dilakukan. Salah satu caranya ialah dengan menggunakan Flutter. Apa itu Flutter? Flutter adalah sejenis framework yang digunakan untuk membantu developer membua aplikasi mobile multiplatform. ",
                  textAlign: TextAlign.justify,
                ),
              ),
            ),

          ],
        ),
      ),

      // body: Container(
      //   child: Row(
      //
      //     children: [
      //       // Container()
      //       // Image.asset('assets/images/foto.png'),
      //
      //       Container(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: <Widget>[
      //
      //             InkWell(
      //               onTap: (){
      //                 Navigator.pop(
      //                     context
      //                 );
      //               },
      //               child: Container(
      //                 // margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      //                 // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //                 height: 100,
      //                 width: 100,
      //                 decoration: BoxDecoration(
      //                   image: DecorationImage(
      //                     alignment: Alignment.topLeft,
      //                     image: AssetImage('assets/images/foto.png'),
      //                     fit: BoxFit.cover,
      //                   ),
      //                   border: Border.all(
      //                     width: 4,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //
      //
      //             Container(
      //               // padding: EdgeInsets.only(left: 400),
      //               margin: const EdgeInsets.only(right: 163, top: 10),
      //               decoration: BoxDecoration(
      //                 border: Border.all(),
      //               ),
      //               child: Text(
      //                 "Belajar Flutter",
      //                 textAlign: TextAlign.justify,
      //               ),
      //             ),
      //
      //             Flexible(
      //               child: Container(
      //                 // padding: EdgeInsets.only(left: 400),
      //                 // margin: const EdgeInsets.only(left: 290, top: 10, bottom: 20),
      //                 decoration: BoxDecoration(
      //                   border: Border.all(),
      //                 ),
      //                 child: Text(
      //                   "Membuat aplikasi\n dengan desain\n yang menarik\n di berbagai platform,\n kini semakin\n mudah dilakukan.\n Salah satu\n caranya ialah \ndengan menggunakan\n Flutter. Apa\n itu Flutter?\n Flutter adalah\n sejenis framework\n yang digunakan\n untuk membantu\n developer membuat\n aplikasi mobile\n multiplatform. ",
      //                   textAlign: TextAlign.justify,
      //                 ),
      //               ),
      //             ),
      //
      //
      //
      //           ],
      //         ),
      //       ),
      //
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.start,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Container(
      //             // margin: EdgeInsets.only(left: 50),
      //             alignment: Alignment.centerLeft,
      //             // margin: EdgeInsets.symmetric(vertical: 20),
      //             // alignment: Alignment.centerLeft,
      //             decoration: BoxDecoration(
      //               border: Border.all(),
      //             ),
      //             child: Text(
      //               "Teguh Ikhtiar Rhamdanu",
      //               // textAlign: TextAlign.center,
      //               style: TextStyle(
      //                 fontSize: 30.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ),
      //
      //           Container(
      //             // margin: EdgeInsets.only(right: 294, top: 10),
      //             // padding: EdgeInsets.only(right: ),
      //             // margin: EdgeInsets.symmetric(vertical: 20),
      //             // alignment: Alignment.centerLeft,
      //             decoration: BoxDecoration(
      //               border: Border.all(),
      //             ),
      //             child: Text(
      //               "Sleep",
      //               textDirection: TextDirection.ltr,
      //               // textAlign: TextAlign.left,
      //               style: TextStyle(
      //                 fontSize: 18.0,
      //               ),
      //             ),
      //           ),
      //
      //           Row(
      //             // mainAxisAlignment: MainAxisAlignment.start,
      //             // crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Container(
      //                 // margin: EdgeInsets.only(right: 184, top: 10),
      //                 // padding: EdgeInsets.only(right: ),
      //                 // margin: EdgeInsets.symmetric(vertical: 20),
      //                 alignment: Alignment.centerLeft,
      //                 decoration: BoxDecoration(
      //                   border: Border.all(),
      //                 ),
      //                 child: Icon(
      //                   Icons.cake,
      //                   color: Colors.red,
      //                   size: 50,
      //                 ),
      //               ),
      //
      //               Container(
      //                 // margin: EdgeInsets.only(right: 294, top: 10),
      //                 // padding: EdgeInsets.only(right: ),
      //                 // margin: EdgeInsets.symmetric(vertical: 20),
      //                 // alignment: Alignment.centerLeft,
      //                 decoration: BoxDecoration(
      //                   border: Border.all(),
      //                 ),
      //                 child: Icon(
      //                   Icons.cake,
      //                   color: Colors.red,
      //                   size: 50,
      //                 ),
      //               ),
      //
      //               Container(
      //                 // margin: EdgeInsets.only(right: 294),
      //                 // padding: EdgeInsets.only(right: ),
      //                 // margin: EdgeInsets.symmetric(vertical: 20),
      //                 // alignment: Alignment.centerLeft,
      //                 decoration: BoxDecoration(
      //                   border: Border.all(),
      //                 ),
      //                 child: Icon(
      //                   Icons.cake,
      //                   color: Colors.red,
      //                   size: 50,
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //
      //     ],
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () => {},
      ),
    );
  }
}

