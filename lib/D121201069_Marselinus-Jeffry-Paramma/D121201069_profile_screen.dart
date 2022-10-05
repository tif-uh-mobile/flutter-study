import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class D121201069ProfileScreen extends StatefulWidget {
  const D121201069ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201069ProfileScreen> createState() => _D121201069ProfileScreenState();
}

class _D121201069ProfileScreenState extends State<D121201069ProfileScreen> {
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
                Colors.lightBlue,
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('D121201069_Marselinus Jeffry Paramma_Profile Screen'),
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
                                    color: Colors.lightBlueAccent,
                                  ),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 50,
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
                                          backgroundColor: Colors.yellowAccent,
                                          side: BorderSide(
                                            width: 2,
                                            color: Colors.yellowAccent,
                                          ),
                                          shape: CircleBorder(),
                                        ),
                                        child: ClipOval(
                                          child: Image.asset(
                                            'lib/assets/Fotoku.jpg',
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
                                              color: Colors.yellowAccent,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Jeffry',
                                                style: GoogleFonts.lato(
                                                  fontSize: 25,
                                                  fontWeight:  FontWeight.bold,
                                                  color: Colors.black,
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
                                              color: Colors.yellowAccent,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Badminton',
                                                style: GoogleFonts.lato(
                                                  fontSize: 25,
                                                  fontWeight:  FontWeight.bold,
                                                  color: Colors.black,
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
                                              color: Colors.yellowAccent,
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'White',
                                                style: GoogleFonts.lato(
                                                  fontSize: 25,
                                                  fontWeight:  FontWeight.bold,
                                                  color: Colors.black,
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
        title: const Text('D121201069 Info Profile'),
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
                'lib/assets/Fotoku.jpg',
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
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Jeffry',
                        style: GoogleFonts.lato(
                          fontSize: 30,
                          fontWeight:  FontWeight.bold,
                          color: Colors.black,
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
                      color: Colors.yellowAccent,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Badminton',
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight:  FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10),),
                  Row(
                    children: [
                      Icon(Icons.sports_tennis),
                      Icon(Icons.gamepad),
                      Icon(Icons.music_note),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10),),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Center(
              child: Text(
                'Lakukan yang membuatmu bahagia, karena hidup hanya sekali',
                style: GoogleFonts.lato(
                  fontSize: 16,
                  fontWeight:  FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10),),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.yellowAccent,
              borderRadius: BorderRadius.circular(30),
            ),

            child: Center(
              child: Text(
                '\n\t'
                    'Hello\n\n'
                    'Saya merupakan seorang mahasiswa Universitas Hasanuddin. Lebih tepatnya pada Fakultas Teknik Jurusan Informatika. Saya memiliki hobi bermain badminton. Walaupun saya tidak terlalu jago untuk bermain badminton, namun saya menggemari olahraga badminton.\n\n'
                    'Selain badminton, saya juga memiliki hobi yaitu bermain game dan mendengarkan lagu. Saya sering sekali mendengarkan lagu, dan saya memmiliki impian untuk bisa bermain biola dan gitar.',
                textAlign: TextAlign.justify,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight:  FontWeight.bold,
                  color: Colors.black,
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