import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/main.dart';

class D121201019ProfileScreen extends StatefulWidget {
  const D121201019ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201019ProfileScreen> createState() =>
      _D121201019ProfileScreenState();
}

class _D121201019ProfileScreenState extends State<D121201019ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
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
                        title: 'D121201019 Muh Akram Profile Screen')));
          },
        ),
        flexibleSpace: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(
            10,
          ),
        )),
        title: Text(
          'D121201019 Muh Akram',
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
                        colors: [Colors.lightBlue, Colors.lightBlueAccent]),
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
                        'assets/D121201019_MuhAkram.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 67, 106, 190),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.lightBlue)),
                      child: const Center(
                        child: Text(
                          'Muh Akram',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 180,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 67, 106, 190),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.lightBlue)),
                      child: const Center(
                        child: Text(
                          'Hobby saya Membaca, Menonton ',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 67, 106, 190),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.lightBlue)),
                      child: const Center(
                        child: Text(
                          'Seorang Pelajar',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                    )
                  ]),
                ),
              )
            ],
          )
        ],
      ),
    );
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
        backgroundColor: Colors.deepPurple,
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
                    builder: (ctx) => const D121201019ProfileScreen()));
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
                        image: AssetImage('assets/D121201019_MuhAkram.jpeg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Muh Akram',
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
                        'PT.Syukur Makmur',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
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
                                  icon: const Icon(Icons.star_border),
                                  iconSize: 20,
                                )))
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Saya adalah Seorang Pelajar',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
                child: Text(
              'saya berharap agar bisa menguasai banyak hal sih utamanya IT mulai dari UI/UX , Fullstack Developer, Game dan masih banyak lagi',
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
