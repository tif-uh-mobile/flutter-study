import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201004_Fauzan-Adithya-ZM/D121201004_profile_screen.dart';

int _icon = 0;

class D121201004DetailScreen extends StatefulWidget {
  const D121201004DetailScreen({Key? key}) : super(key: key);

  @override
  State<D121201004DetailScreen> createState() => _D121201004DetailScreenState();
}

class _D121201004DetailScreenState extends State<D121201004DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Profile'),
      ),

      body: BackgroundGrad(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Image(
                    image: AssetImage('assets/D121201004.jpeg'),
                    width: 150,
                  ),
                ),

                Column(
                  children: [
                    BorderBox(
                      width: 180,
                      height: 45,
                      text: 'Adithya',
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                    ),

                    Padding(padding: EdgeInsets.only(top: 10)),
                    BorderBox(
                      width: 180,
                      height: 45,
                      text: 'Basketball',
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),

                    Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      children: List.generate(
                        3,
                        (index) => IconButton(
                        onPressed: () {
                          setState(() {
                            _icon = index + 1;
                          });
                        },
                        color: Colors.white,
                        icon: index < _icon ?
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          ) :
                        Icon(Icons.star_border)
                        )
                      ),
                    )
                  ],
                ),
              ],
            ),
            
            BorderBox(
              width: 350,
              height: 30,
              text: 'Utamakan keselamatan daripada kenyamanan',
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w500,
              fontSize: 16
            ),

            BorderBox(
              width: 350,
              height: 270,
              text: 'Saya adalah mahasiswa semester 5 di Universitas Hasanuddin Jurusan Teknik Informatika. Saat ini saya sedang tertarik dalam bidang Backend Developer dan Machine Learning.\n\n'
                  'Riwayat Pendidikan:\n'
                  '- SDN Sudirman 1 Makassar (2011 - 2014)\n'
                  '- SMPN 2 Bandung (2014 - 2017)\n'
                  '- SMAN 10 Bandung (2017 - 2020)\n\n',
              textAlign: TextAlign.justify,
              fontWeight: FontWeight.w400,
              fontSize: 16
            ),
          ],
        )
      ),
    );
  }
}

class BorderBox extends StatelessWidget {

  const BorderBox({Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.textAlign,
    required this.fontWeight,
    required this.fontSize,
  }) : super(key: key);

  final double width;
  final double height;
  final String text;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: textAlign,
          style: TextStyle(
            color: Colors.white,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}

