import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/main.dart';
var label= true;
var label1= true;
var label2= true;

class D121201048ProfileScreen extends StatefulWidget {
  const D121201048ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201048ProfileScreen> createState() =>
      _D121201048ProfileScreenState();
}

class _D121201048ProfileScreenState extends State<D121201048ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                        title: 'D121201048-Muhammad Fadhil Akbar Amrin')));
            },
          ),

          title: Text(
            'D121201048-Muhammad Fadhil Akbar Amrin',
            style: GoogleFonts.inter(color: Colors.white),
          ),
        ),

        body: Container(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profil()));
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/foto.png'),
                  radius: 70.0,
              ),
                ),

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(30.0),
                      width: 220,
                      height: 40,
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                              "Muhammad Fadhil Akbar Amrin",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight : FontWeight.bold,
                                    color: Colors.white)
                            )
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(30.0),
                        width: 220,
                        height: 40,
                        color: Colors.blue,
                        child: Center(
                            child: Text(
                                "Hobiku adalah bermain game",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight : FontWeight.bold,
                                    color: Colors.white)
                            )
                        )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(30.0),
                        width: 220,
                        height: 40,
                        color: Colors.blue,
                        child: Center(
                            child: Text(
                                "Warna kesukaanku adalah biru",
                                style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight : FontWeight.bold,
                                    color: Colors.white)
                            )
                        )
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const D121201048ProfileScreen()));
          },
        ),
        title: Text(
          'Profil',
          style: GoogleFonts.inter(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 150,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/foto.png')),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 190,

                      child: Text(
                        'Muhammad Fadhil Akbar Amrin',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 190,
                          child: Text(
                            'Hobiku adalah main game',
                            style: GoogleFonts.inter(
                              fontSize: 18,
                            ),
                          )
                        ),

                      ],
                    ),

                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                label = !label;
                              });
                            },
                            color:  Colors.red,
                            icon: label
                                ? const Icon(Icons.favorite_border)
                                : const Icon(Icons.favorite),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                label1 = !label1;
                              });
                            },
                            icon: label1
                                ? const Icon(Icons.bookmark_border)
                                : const Icon(Icons.bookmark),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                label2 = !label2;
                              });
                            },
                            icon: label2
                                ? const Icon(Icons.notifications_none)
                                : const Icon(Icons.notifications)
                        ),

                      ],

                    ),


                  ],
                ),
              ],
            ),
            Container(
                width: 400,
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Mahasiswa Teknik Informatika di UNHAS',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Container(
                child: Text(
                  'Saya Muhammad Fadhil Akbar Amrin yang biasa dipanggil sebagai Fadil, saya ini mahasiswa semester 5 di Universitas Hasanuddin departemen Teknik Informatika. Dalam perkulihanku selama 2 tahun terakhir ini saya telah belajar banyak mengenai pemrograman dan beberapa bahasa pemrograman yang diajarkan',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.inter(
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

