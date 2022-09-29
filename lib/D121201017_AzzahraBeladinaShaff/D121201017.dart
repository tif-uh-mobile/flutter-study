import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/main.dart';

class D121201005ProfileScreen extends StatefulWidget {
  const D121201005ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201005ProfileScreen> createState() =>
      _D121201005ProfileScreenState();
}

class _D121201005ProfileScreenState extends State<D121201005ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
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
                              'D121201017 Azzahra Beladina Shaff')));
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
            'D121201017 Azzahra Beladina Shaff',
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
                          colors: [Colors.black, Color.fromARGB(255, 255, 65, 128)]),
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
                            'images/D121201017_AzzahraBeladinaShaff.jpeg',
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
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color.fromARGB(255, 252, 255, 255))),
                        child: const Center(
                          child: Text(
                            'Azzahra Beladina Shaff',
                            style:
                                TextStyle(color: Colors.pink, fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 240,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color.fromARGB(255, 252, 255, 255))),
                        child: const Center(
                          child: Text(
                            'Hobi saya Membaca buku',
                            style:
                                TextStyle(color: Colors.pink, fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 252, 255, 255),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color.fromARGB(255, 252, 255, 255))),
                        child: const Center(
                          child: Text(
                            'Warna Kesukaan Saya Adalah Black-Pink',
                            style:
                                TextStyle(color: Colors.pink, fontSize: 15.0),
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
        backgroundColor: Colors.pink,
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
                    builder: (ctx) => const D121201005ProfileScreen()));
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
                        image: AssetImage('images/D121201017_AzzahraBeladinaShaff.jpeg')),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Azzahra Beladina Shaff',
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
                        'Senang Membaca buku',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.pink,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                        children: List.generate(
                            4,
                            (index) => IconButton(
                                  onPressed: () {},
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 0.0),
                                  icon: const Icon(Icons.cloud_outlined),
                                  iconSize: 20,
                                  color: Colors.pink,
                                )))
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Tentang Saya',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
                child: Text(
              'Hai, nama saya Zahra, Saya adalah seorang Mahasiswi semester 5 Universitas Hasanuddin, Program Studi Teknik Informatika angkatan 2020.',
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