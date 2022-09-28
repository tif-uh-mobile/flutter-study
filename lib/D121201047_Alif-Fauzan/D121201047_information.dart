import 'package:flutter/material.dart';

class DetailProfile extends StatefulWidget {
  const DetailProfile({Key? key}) : super(key: key);

  @override
  State<DetailProfile> createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201047 Detail Profile'),
      ),

      body: Center(
        child: BackGrad(
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
                      image: AssetImage('lib/D121201047_Alif-Fauzan/assets/2.jpg'),
                      width: 120,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 6)),

                  Column(
                    children: [
                      BorderText(
                        widthBox: 200,
                        heightBox: 45,
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'Alif Fauzan',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 18)),

                      BorderText(
                        widthBox: 200,
                        heightBox: 45,
                        padding: EdgeInsets.all(10.6),
                        child: Text(
                          'Musical instrument',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 18)),

                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                        ],
                      ),
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
                  'Hidup dibawa enjoy',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 10)),
              Container(
                child: BorderText(
                  widthBox: 330,
                  heightBox: 225,
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Text(
                    'Walau hujan tak kunjung berhenti\n'
                    'Masih ada aku temanimu disini\n'
                    'Rapalkan mantra datangkan cahaya\n'
                    'Tuk sinari hari harimu\n'
                    'Hilangkan semua rasa ragu\n'
                    'Yang selimuti hati pikiran dan emosi\n'
                    'Rapalkan mantra datangkan cahaya\n'
                    'Buka lembaran yang baru\n'
                    'Ehe',
                    textAlign: TextAlign.justify,
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
          ),
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
        Padding(padding: EdgeInsets.only(top: 40)),
        Container(
          width: 350,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 1.5,
                blurRadius: 2,
                offset: Offset(0, 0),
              ),
            ],
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.cyan,
                Colors.blue
              ],
            ),
          ),
          child: child,
        ),
      ],
    );
  }
}

class BorderText extends StatelessWidget {
  const BorderText({Key? key,
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
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: child,
    );
  }
}