// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/main.dart';

var _rating = 0;

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
          backgroundColor: Color.fromARGB(255, 194, 111, 22),
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
                              'D121201107 Atira Septiara Profile Screen',),),);
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
            'D121201107 Atira Septiara',
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
                          colors: [Color.fromARGB(255, 194, 111, 22), Color.fromARGB(255, 245, 255, 64)]),
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
                                  builder: (ctx) => const DetailPage(),),);
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'assets/D121201107_AtiraSeptiara.jpg',
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
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 132, 29),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Atira Septiara',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 234, 132, 29),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Hobi saya berswafoto',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 234, 132, 29),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Warna kesukaan saya adalah putih',
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
        backgroundColor: Color.fromARGB(255, 194, 111, 22),
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
                        image: AssetImage('assets/D121201107_AtiraSeptiara.jpg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Atira Septiara',
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
                                  onPressed: () {
                                    setState(() {
                                      _rating = index + 1;
                                    });
                                  },
                                  color: Colors.amber,
                                  icon: index < _rating
                                      ? const Icon(Icons.insert_emoticon_rounded)
                                      : const Icon(Icons.insert_emoticon),
                                ),
                              ),
                            ),
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
              'Nama saya Atira Septiara, lahir di Jayapura, 21 September 2002. Agama Islam, saya berasal dari suku Bugis. '
              ' Saya memiliki hobi mendengarkan musik, dan berswafoto, sekarang saya merupakan mahasiswi jurusan Teknik Informatika, Universitas Hasanuddin.',
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