import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class D121201049ProfileScreen extends StatefulWidget {
  const D121201049ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201049ProfileScreen> createState() => _D121201049ProfileScreenState();
}

class _D121201049ProfileScreenState extends State<D121201049ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 9, 35, 1),
                Colors.cyan,
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Muhammad Fajar Madani Profile'),
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
              child: Column(
                children: [
                  Container(
                    height: height * 1.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          //fit: StackFit.expand,
                            children: [
                              Positioned(
                                bottom: 490,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: innerHeight * 0.52,
                                  width: innerWidth,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 115,
                                      ),
                                      Text(
                                        'My Profile',
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontFamily: 'Nunito',
                                          fontSize: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Stack(
                                    children: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (ctx) => InfoProfile()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          side: BorderSide(
                                            width: 2,
                                            color: Colors.white,
                                          ),
                                          shape: CircleBorder(),
                                        ),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'lib/assets/fotofjar.jpeg',
                                            width: 150, height: 150,
                                            fit: BoxFit.fitWidth,
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                              Positioned(
                                top: 200,
                                left: 0,
                                right: 0,
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Column(
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            height: height * 0.1,
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Muhammad Fajar Madani',
                                                style: GoogleFonts.lato(
                                                  fontSize: 25,
                                                  fontWeight:  FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Container(
                                            height: height * 0.1,
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Badminton',
                                                style: GoogleFonts.lato(
                                                  fontSize: 25,
                                                  fontWeight:  FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Container(
                                            height: height * 0.1,
                                            decoration: BoxDecoration(
                                              color: Colors.blueGrey,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Black',
                                                style: GoogleFonts.lato(
                                                  fontSize: 25,
                                                  fontWeight:  FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ),

                              ),
                              Padding(padding: EdgeInsets.only(top: 75)),
                            ]
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

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
        title: const Text('D121201049 Info Profile'),
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
                'lib/assets/fotofjar.jpeg',
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
                      color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Muhammad Fajar Madani',
                        style: GoogleFonts.lato(
                          fontSize: 15,
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
                      color: Colors.cyan[900],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Badminton',
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
                      Icon(Icons.sports_tennis),
                      Padding(padding: EdgeInsets.only(right: 10),),
                      Icon(Icons.money),
                      Padding(padding: EdgeInsets.only(right: 10),),
                      Icon(Icons.music_note),
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
              color: Colors.cyan[900],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                'Just Do It!',
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
              color: Colors.cyan[900],
              borderRadius: BorderRadius.circular(40),
            ),

            child: Center(
              child: Text(
                '\t'
                    'Hola\n\n'
                    'Saya adalah seorang mahasiswa Universitas Hasanuddin. Lebih tepatnya pada Fakultas Teknik Jurusan Informatika, saya berharap kedepannya saya dapat menjadi seorang programmer handal.\n\n'
                    'Hobi saya yaitu bermain badminton, selain itu saya juga sering bermain game dan mendengarkan musik untuk menghabiskan waktu. Warna kesukaan saya hitam',
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

class NavigateButton extends StatelessWidget {

  const NavigateButton({Key? key, required this.name, required  this.page}) : super(key: key);

  final Widget page;
  final String name;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      child: Text(name),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.cyan,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}