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
        title: const Text('D121201059 Info Profile'),
      ),
      backgroundColor: Colors.indigo,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('lib/assets/images/saya2.jpeg'),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Column(
                  children: [
                    BorderText(
                      widthBox: 215,
                      heightBox: 45,
                      padding: const EdgeInsets.only(left: 10, top: 2, right: 10),
                      child: Text(
                        'Hadriana Nurul Pertiwi',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.lato(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff7986cb)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 10)),
                    BorderText(
                      widthBox: 215,
                      heightBox: 45,
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        'Universitas Hasanuddin',
                        style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff7986cb)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 2)),
                    Row(
                      children: List.generate(3,
                          (index) => IconButton(
                              onPressed: () {},
                            padding: const EdgeInsets.symmetric(
                              horizontal: 0.0),
                            icon: Icon(Icons.favorite_border,
                            color: Colors.white),
                            iconSize: 20,
                          ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            BorderText(
                widthBox: 375,
                heightBox: 35,
                padding: EdgeInsets.all(5),
                child: Text(
                  'About Me',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff7986cb)),
                ),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Container(
              child: BorderText(
                widthBox: 375,
                heightBox: 300,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  'Halo. Saya merupakan seorang mahasiswi semester 5 di Universitas Hasanuddin Fakultas Teknik Jurusan Teknik Informatika.'
                      ' Harapan saya kedepannya bisa survive di Teknik Informatika dengan hasil yang memuaskan.'
                    ' Selain itu juga saya berharap kedepannya ingin bekerja di bidang IT sebagai programming yang bekerja di kantor Google.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.lato(
                    fontWeight: FontWeight.normal,
                      color: Color(0xff7986cb))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BorderText extends StatelessWidget {
  const BorderText({Key? key,
    required this.widthBox,
    required this.heightBox,
    required this.padding,
    required this.child,
  }) : super(key: key);

  final double widthBox;
  final double heightBox;
  final EdgeInsetsGeometry padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthBox,
      height: heightBox,
      padding: padding,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(7)),
      ),
      child: child,
    );
  }
}