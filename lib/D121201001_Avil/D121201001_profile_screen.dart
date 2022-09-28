import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'D121201001 Profile User',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: new Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('D121201001 Profile User'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PageDua(),
              ),
            );
          },
          child: const CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/img/profilepict.jpeg'),
          ),
        ),
        Container(
            width: 500,
            height: 443,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/bg.jpg'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 190,
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.blue,
                        width: 3,
                      ),
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(
                        child: Text('Avil Mahrin',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.blueAccent,
                                fontSize: 20)))),
                Container(
                  margin: const EdgeInsets.all(10),
                  height: 4,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 40, 153, 246),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                    width: 300,
                    height: 100,
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 25, 217, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                            'Seseorang yang gemar editing, music instrument, & gaming.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16)))),
                Container(
                    width: 190,
                    height: 50,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 25, 217, 255),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text('Saya suka warna Biru',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 16)))),
              ],
            )),
      ],
    ));
  }
}

// Page 2

class PageDua extends StatefulWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201001 Profile'),
      ),
      body: Center(
        child: BackGrad(
          child: Column(),
        ),
      ),
    );
  }
}

class BackGrad extends StatelessWidget {
  const BackGrad({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 5)),
        Container(
            height: 598,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/bg.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 10)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.8,
                          color: Colors.white,
                        ),
                      ),
                      child: Image(
                        image: AssetImage('assets/img/profilepict.jpeg'),
                        width: 150,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 6)),
                    Column(
                      children: [
                        BorderText(
                          widthBox: 170,
                          heightBox: 45,
                          padding: EdgeInsets.all(4),
                          child: Text(
                            'Avil',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.blueAccent,
                                fontSize: 20),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 18)),
                        BorderText(
                          widthBox: 170,
                          heightBox: 45,
                          padding: EdgeInsets.all(10.6),
                          child: Text(
                            'Multimedia',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 18)),
                        Row(children: [
                          Container(
                              child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              )
                            ],
                          ))
                        ]),
                      ],
                    ),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                BorderText(
                  widthBox: 330,
                  heightBox: 35,
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Do it, you made it',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 40, 153, 246),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1.8,
                      color: Colors.white,
                    ),
                  ),
                  child: BorderText(
                    widthBox: 330,
                    heightBox: 300,
                    padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Text(
                      '\nberprinsip untuk tidak berprinsip merupakan ambisi yang serius\n'
                      'tetap melangkah maju, hadapi apa yang sedang dihadapi, selalu siap\n'
                      'akan apa yang akan segera terjadi\n'
                      'prinsip terkadang akan membelenggu\n\n'
                      'Be calm, and reasonable person.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
              ],
            )),
      ],
    );
  }
}

class BorderText extends StatelessWidget {
  const BorderText({
    Key? key,
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          width: 2,
          color: Colors.blue,
        ),
      ),
      child: child,
    );
  }
}
