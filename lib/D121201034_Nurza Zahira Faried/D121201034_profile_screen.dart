// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/main.dart';

class D121201034ProfileScreen extends StatefulWidget {
  const D121201034ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201034ProfileScreen> createState() =>
      _D121201034ProfileScreenState();
}

class _D121201034ProfileScreenState extends State<D121201034ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 20, 202, 141),
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const MyHomePage(
                          title:
                              'D121201034 Nurza Zahira Faried Profile Screen')));
            },
          ),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(
                10,
              ),
            ),
          ),
          title: Text(
            'D121201034 Nurza Zahira Faried',
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14),
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 20, 202, 141),
                            Colors.lightBlueAccent
                          ]),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DetailPage()));
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'assets/D121201034_NurzaZahiraFaried.jpeg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 20, 202, 141),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 3, 244, 148))),
                        child: const Center(
                          child: Text(
                            'Nurza Zahira Faried',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 20, 202, 141),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 3, 244, 148))),
                        child: const Center(
                          child: Text(
                            'Hobby saya membaca dan mendengarkan musik',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 20, 202, 141),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 3, 244, 148))),
                        child: const Center(
                          child: Text(
                            'Warna Kesukaan Saya Adalah Biru',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 202, 141),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => const D121201034ProfileScreen()));
          },
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              10,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/D121201034_NurzaZahiraFaried.jpeg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Nurza Zahira Faried',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Universitas Hasanuddin',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                        children: List.generate(
                            5,
                            (index) => IconButton(
                                  onPressed: () {},
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  icon: const Icon(Icons.favorite_border),
                                  iconSize: 20,
                                )))
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'About Me ',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
                child: Text(
              'Saat ini saya adalah seorang mahasiswi Teknik Informatika Semester 5 Universitas Hasanuddin.'
              ' Harapan saya kedepannya ingin bekerja di bidang IT dan ingin menjadi orang sukses.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w300,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
