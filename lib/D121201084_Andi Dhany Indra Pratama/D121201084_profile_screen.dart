import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class D121201084ProfileScreen extends StatefulWidget {
  const D121201084ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201084ProfileScreen> createState() => _D121201084ProfileScreenState();
}

class _D121201084ProfileScreenState extends State<D121201084ProfileScreen> {
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
                Colors.lightGreenAccent,
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('D121201084_Andi Dhany Indra Pratama_Profile Screen'),
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
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 80,
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
                                            'lib/assets/AAAA.jpeg',
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
                                              color: Colors.lime,
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Andi Dhany Indra Pratama',
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
                                              color: Colors.lime,
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Catur',
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
                                              color: Colors.lime,
                                              borderRadius: BorderRadius.circular(20),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Green',
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
        title: const Text('D121201084 Info Profile'),
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
                'lib/assets/AAAA.jpeg',
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
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Andi Dhany',
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
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Catur',
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
                      Icon(Icons.motorcycle),
                      Padding(padding: EdgeInsets.only(right: 10),),
                      Icon(Icons.gamepad),
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
              color: Colors.lime,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                'Hajarrrrrrrr saja',
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
              color: Colors.lime,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Center(
              child: Text(
                    'Halo\n\n'
                    'Saya Andi Dhany asal dari Masamba, Luwu Utara yang sekarang berkuliah di Universitas Hasanuddin Fakultas Teknik Departemen Informatika\n\n'
                    'Saya memiliki cita-cita Lebih dari 1 karena saya tidak yakin dengan diri saya bahwa akan mewujuti 1 cita saya teresebut. Hobi saya bermain catur dan bermain video game',
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
          backgroundColor: Colors.blueGrey,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}

