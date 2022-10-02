import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/D121201096_Yahdi-Arrazi/D121201096_detail_screen.dart';

class D121201096ProfileScreen extends StatefulWidget {
  const D121201096ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201096ProfileScreen> createState() => _D121201096ProfileScreenState();
}

class _D121201096ProfileScreenState extends State<D121201096ProfileScreen> {
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
                Colors.blueGrey,
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('D121201096_Yahdi Arrazi_Profile Screen'),
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
                                      height: 80,
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
                                        'lib/assets/aku.jpeg',
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
                                              'Yahdi Arrazi',
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
                                              'Basketball',
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


