import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D121201070ProfileScreen extends StatefulWidget {
  const D121201070ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201070ProfileScreen> createState() => _D121201070ProfileScreenState();
}

class _D121201070ProfileScreenState extends State<D121201070ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TealAppBar(text: 'D121201070 Muhammad Addeta Rukmadi'),
      body: BackgroundGrad(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => const DetailPage()));
                },
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 5.0,
                    color: Colors.white,
                  ),
                  shape: const CircleBorder(),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/D121201070_MuhammadAddetaRukmadi.jpg'),
                  radius: 90,
                )),
            const TextBox(text: 'Muhammad Addeta R.'),
            const TextBox(text: 'Coding'),
            const TextBox(text: 'Green'),
          ],
        ),
      ),
    );
  }
}

class TealAppBar extends StatelessWidget with PreferredSizeWidget {
  const TealAppBar({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.teal,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class BackgroundGrad extends StatelessWidget {
  const BackgroundGrad({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 370,
            height: 510,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.teal,
                  Colors.blue.shade700,
                ],
              ),
              border: Border.all(
                color: Colors.white,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 7,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: child));
  }
}

class TextBox extends StatelessWidget {
  const TextBox({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 14),
        ),
      ),
    );
  }
}

int _icon = 0;

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TealAppBar(
        text: ' ',
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
                child: const Image(
                  image: AssetImage('assets/D121201070_MuhammadAddetaRukmadi.jpg'),
                  width: 140,
                ),
              ),
              Column(
                children: [
                  const BorderBox(
                    width: 180,
                    height: 45,
                    text: 'Muhammad Addeta R.',
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 7),
                  ),
                  const BorderBox(
                    width: 180,
                    height: 45,
                    text: 'Coding',
                    textAlign: TextAlign.center,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                  Row(
                    children: List.generate(
                        3,
                        (index) => IconButton(
                            onPressed: () {
                              setState(
                                () {
                                  _icon = index + 1;
                                },
                              );
                            },
                            color: Colors.white,
                            icon: index < _icon
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                : const Icon(Icons.star_border))),
                  )
                ],
              ),
            ],
          ),
          const BorderBox(
            width: 350,
            height: 33,
            text: 'Terkadang bukanlah hasil yang penting, tapi usahanya',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
          const BorderBox(
            width: 350,
            height: 270,
            text:
                'Saya Muhammad Addeta Rukmadi, seorang mahasiswa teknik informatika di Universitas Hasanuddin. Saya sebenarnya tidak punya bekal yang baik sebelum masuk ke jurusan Teknik Informatika. Tapi kini setelah kuliah hingga Semester 5, pengetahuan saya semakin luas terkait Rekayasa Perangkat Lunak. \nSaya tertarik dengan dunia pemrograman terkhusus di pemrograman web. Saya berencana untuk bekerja di perusahaan besar sebagai back-end developer.',
            textAlign: TextAlign.justify,
            fontWeight: FontWeight.w400,
            fontSize: 16,
          ),
        ],
      )),
    );
  }
}

class BorderBox extends StatelessWidget {
  const BorderBox({
    Key? key,
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
        borderRadius: const BorderRadius.all(Radius.circular(5)),
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
