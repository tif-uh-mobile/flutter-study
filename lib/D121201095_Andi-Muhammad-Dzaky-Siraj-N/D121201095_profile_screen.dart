import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class D121201095ProfileScreen extends StatefulWidget {
  const D121201095ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201095ProfileScreen> createState() => _D121201095ProfileScreenState();
}

        class _D121201095ProfileScreenState extends State<D121201095ProfileScreen> {
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('D121201095 Andi Muhammad Dzaky Siraj N. Profile Screen'),
              ),

            body: BackgroundGrad(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => detail()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black54,
                      side: BorderSide(
                        width: 2,
                        color: Colors.grey,
                      ),
                        shape: CircleBorder(),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('lib/assets/aku.jpeg'),
                      radius: 90,
                    )
                  ),

                  TextBox(text: 'Andi Muhammad Dzaky Siraj N.'),
                  TextBox(text: 'Main Basket'),
                  TextBox(text: 'Red'),
                 ],
                ),
               ),
              );
             }
        }

        class BackgroundGrad extends StatelessWidget {

          const BackgroundGrad({Key? key, required this.child}) : super(key: key);

            final Widget child;


            @override
            Widget build(BuildContext context) {
              return Center (
                  child: Container(
                    width: 360,
                    height: 510,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                      begin:Alignment.topCenter,
                      end:Alignment.bottomCenter,
                      colors: [
                        Colors.lightBlue,
                        Colors.black,
                      ] ,
                      ),
                    border: Border.all(
                      color: Colors.white,
                    ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                            spreadRadius: 7 ,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: child
                    )
                );
              }
        }

        class TextBox extends StatelessWidget {

          const TextBox({Key? key,
            required this.text
          }) : super(key: key);

          final String text;

          @override
          Widget build(BuildContext context) {
            return Container(
              width: 250,
              height: 50,
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
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cormorantSc(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 20
                  ),
                ),
              ),
            );
          }
        }

        int _icon = 0;

        class detail extends StatefulWidget {
        const detail({Key? key}) : super(key: key);

          @override
          State<detail> createState() => _detail();
        }

        class _detail extends State<detail> {
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
                                image: AssetImage('lib/assets/aku.jpeg'),
                                width: 165,
                              ),
                            ),

                            Column(
                              children: [
                                BorderBox(
                                    width: 180,
                                    height: 45,
                                    text: 'Jek',
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30
                                ),

                                Padding(padding: EdgeInsets.only(top: 10)),
                                BorderBox(
                                    width: 180,
                                    height: 45,
                                    text: 'Olahraga Basket',
                                    textAlign: TextAlign.center,
                                    fontWeight: FontWeight.bold,
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
                            text: 'Usaha tanpa doa merupakan hal yang sia-sia',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),

                        BorderBox(
                            width: 350,
                            height: 270,
                            text: 'Saya adalah mahasiswa Universitas Hasanuddin, Fakultas Teknik Jurusan Elektro Departemen Teknik Informatika semester 5 .\n\n'
                                'Riwayat Pendidikan:\n'
                                '- SDN. Mangkura I (2008 - 2014)\n'
                                '- SMP Negeri 06 Makassar (2014 - 2017)\n'
                                '- MAN 2 Kota Makassar (2017 - 2020)\n\n',
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
                  style: GoogleFonts.cormorantSc(
                    color: Colors.white,
                    fontWeight: fontWeight,
                    fontSize: fontSize,
                  ),
                ),
              ),
            );
          }
        }