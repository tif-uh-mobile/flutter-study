import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoProfile extends StatefulWidget {
  const InfoProfile({Key? key}) : super(key: key);

  @override
  State<InfoProfile> createState() => _InfoProfileState();
}

class _InfoProfileState extends State<InfoProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201096 Info Profile'),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
              ),
              Image.asset(
                  'lib/assets/aku.jpeg',
                width: 150, height: 150,
                fit: BoxFit.fitWidth,
              ),
              Padding(padding: EdgeInsets.only(left: 10),),
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                      child: Center(
                        child: Text(
                            'Yahdi Arrazi',
                          style: GoogleFonts.lato(
                            fontSize: 30,
                            fontWeight:  FontWeight.bold,
                            color: Colors.white,
                        ),
                      ),
                  ),
                ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Basketball',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight:  FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Row(
                    children: [
                      Icon(Icons.sports_basketball),
                      Icon(Icons.money),
                      Icon(Icons.bed),
                    ],
                  ),
                ],
              ),
            ],
          ),
            Padding(padding: EdgeInsets.only(top: 10),),
            Container(
              height: 50,
              width: 380,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(30),
                ),
              child: Center(
                child: Text(
                  'Panther Till I Die',
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight:  FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          Padding(padding: EdgeInsets.only(top: 10),),
          Container(
            height: 400,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(30),
            ),

            child: Center(
              child: Text(
                  '\n\t'
                'Hai\n\n'
                'Saya adalah seorang mahasiswa Universitas Hasanuddin. Lebih tepatnya pada Fakultas Teknik Jurusan Informatika. Saya mempunyai hobi bermain basket. Walaupun tak terlalu pandai bermain basket, Namun saya sangat amat menyukai olahraga ini.\n\n'
                'Selain bermain basket, saya juga mempunyai kebiasaan unik yaitu selalu tidur jika tak melakukan apa-apa. Saya juga sering bermain game hanya saja saya bermain game pada saat ada yang mengajak saya bermain, jika tidak makan akan jarang sekali saya bermain game sendirian.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight:  FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
            ),
            ),
        ],
      ),
    );
  }
}