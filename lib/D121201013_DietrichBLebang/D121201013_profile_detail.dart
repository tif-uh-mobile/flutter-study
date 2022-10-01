import 'package:flutter/material.dart';

class D121201013DetailScreen extends StatefulWidget {
  const D121201013DetailScreen({Key? key}) : super(key: key);

  @override
  State<D121201013DetailScreen> createState() => _D121201013DetailScreenState();
}

class _D121201013DetailScreenState extends State<D121201013DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dietrich Bite Lebang Detail Screen'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      'https://sikola.unhas.ac.id/app/upload/users/4/43046/43046_602f1647864ae_20200818_130131.jpg?rand=633843f1df996',
                      width: 190.0,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 175.0,
                          margin: const EdgeInsets.only(
                            top: 15.0,
                          ),
                          padding: const EdgeInsets.all(18.0),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent
                          ),
                          child: const Text(
                            'Dietrich Bite Lebang',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0
                            ),
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.0,
                          ),
                        ),
                        Container(
                          width: 170.0,
                          margin: const EdgeInsets.only(
                            top: 15.0,
                            bottom: 20.0,
                          ),
                          padding: const EdgeInsets.all(18.0),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent
                          ),
                          child: const Text(
                            'Game',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(children: const [
                          Icon(
                              Icons.headphones
                          ),
                          Icon(
                              Icons.pets
                          ),
                          Icon(
                              Icons.games
                          ),
                          Icon(
                              Icons.sports_esports_outlined
                          ),
                          Icon(Icons.laptop
                          ),
                        ])
                      ],
                    )
                  ],
                ),
                Container(
                  width: 320.0,
                  margin: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: const Text(
                    'Pemrograman Mobile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 320.0,
                  margin: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  padding: const EdgeInsets.all(18.0),
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent
                  ),
                  child: const Text(
                    'Pemrograman mobile merupakan gabungan antara kata ” pemrograman ” dan ” mobile “. Istilah lainnya yaitu mobile programming. Pemrograman ini secara singkat memiliki makna proses menulis kode-kode program untuk membuat aplikasi yang ditujukan untuk perangkat bergerak (Mobile). Jadi berbagai jenis aplikasi smartphone yang kita pakai setiap hari merupakan hasil akhir dari pemrograman mobile. Orang yang membuatnya disebut Mobile Developer, baik itu mobile android developer atau mobile iOS developer.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                    maxLines: 10,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ]
          )
      ),
    );
  }
}