import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

class D121201073ProfileScreen extends StatefulWidget {
  const D121201073ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201073ProfileScreen> createState() => _D121201073ProfileScreenState();
}

class _D121201073ProfileScreenState extends State<D121201073ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halo Ainun Anugrah'),
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
                    width: 5,
                    color: Colors.white,
                  ),
                  shape: CircleBorder(),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/D121201073.jpeg'),
                  radius: 90,
                )
            ),

            TextBox(text: 'Andi Ainun Anugrah AR'),
            TextBox(text: 'Basketball'),
            TextBox(text: 'Black'),
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
            width: 370,
            height: 510,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [
                  HexColor.fromHex("#00496B"),
                  HexColor.fromHex("#337FA1"),

                ],
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
          style: TextStyle(
              color: Colors.black54,
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
                      image: AssetImage('assets/D121201073.jpeg'),
                      width: 140,
                    ),
                  ),

                  Column(
                    children: [
                      BorderBox(
                          width: 180,
                          height: 45,
                          text: 'Ainun Anugrah',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),

                      Padding(padding: EdgeInsets.only(top: 7)),
                      BorderBox(
                          width: 180,
                          height: 45,
                          text: 'Basket dong',
                          textAlign: TextAlign.center,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                      ),

                      Padding(padding: EdgeInsets.only(top: 9)),
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
                  height: 33,
                  text: 'Train till failure',
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  fontSize: 15
              ),

              BorderBox(
                  width: 350,
                  height: 270,
                  text: 'Hai...\n'
                        'Saya adalah seorang mahasiswa Universitas Hasanuddin fakultas Teknik jurusan Informatika. Hobi saya yaitu bermain basket sejak dari sd saya sangat tertarik bermain basket dan mulai mempelajari hingga saat ini. Saya juga menyukai dunia fitness yaitu weightlifting saya sangat senang mempelajari sesuatu yang baru yang akan memberikan saya feedback yang baik dalam diri saya tentunya. love yourself ya\n\n',
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