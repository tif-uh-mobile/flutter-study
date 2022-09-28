import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tif_flutter/D121201059_Hadriana-Nurul-Pertiwi/D121201059_info_profile.dart';

class D121201059ProfileScreen extends StatefulWidget {
  const D121201059ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201059ProfileScreen> createState() => _D121201059ProfileScreenState();
}

class _D121201059ProfileScreenState extends State<D121201059ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201059 Hadriana Nurul Pertiwi'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xff3f51b5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
              ),
              child: Column(
                children: [
                  Column(children: <Widget> [
                    SizedBox(height: 125),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                              Radius.circular(12)
                          )
                      ),
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text(
                          'Hadriana Nurul Pertiwi',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff7986cb)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                              Radius.circular(12)
                          )
                      ),
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text(
                          'Reading and watching',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff7986cb)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.all(
                              Radius.circular(12)
                          )
                      ),
                      height: 50,
                      width: 300,
                      child: Center(
                        child: Text(
                          'Black and white',
                          style: GoogleFonts.lato(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff7986cb)
                          ),
                        ),
                      ),
                    )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 75)),
                  NavigateButton(name: 'Next', page: InfoProfile()),
                ],
              ),
            ),
            Align(
            alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'lib/assets/images/saya.jpeg',
                      width: 150,height: 150,fit: BoxFit.cover,
                    ),
                  )
                  ],
              ),
            ),
          ]
        ),
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
        backgroundColor: Color(0xff7986cb),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}



