import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D121201103ProfileScreen extends StatefulWidget {
  const D121201103ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201103ProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201103ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('D121201103 Andhika Rama Kurniawan Profile Screen'),
      ),body: Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 120,
              height: 120,
              decoration: const BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage('assets/D121201103.jpg'),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            Column(
              children: [
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 240,
                    height: 50,
                    decoration:  BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlueAccent,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Text('Andhika',
                              style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 240,
                  height: 50,
                  decoration:  BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 3,
                     ),
                    ),
                    child: Center(
                      child: Text('Bermain Game',
                              style: GoogleFonts.poppins(
                              fontWeight: FontWeight.normal,
                              fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                      3,
                      (index) => IconButton(
                            onPressed: () {},
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0),
                            icon: const Icon(Icons.catching_pokemon),
                            iconSize: 40,
                          )))
                  ],
                )
              ],
            ),
        Container(
          margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: 50,
          decoration:  BoxDecoration(
            border: Border.all(
              color: Colors.lightBlueAccent,
              width: 3,
            ),
          ),
          child: Text('Penikmat Segala Jenis Game',
                  style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: 350,
          decoration:  BoxDecoration(
            border: Border.all(
              color: Colors.lightBlueAccent,
              width: 3,
            ),
          ),
          child: Text('Hidup itu kayak zona aman, harus terus bergerak atau tereliminasi.',
                  style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                ),
              ),
          ),
      ],
    )
    );
  }
}