import 'package:flutter/material.dart';

class D121201066DetailScreen extends StatefulWidget {
  const D121201066DetailScreen({Key? key}) : super(key: key);

  @override
  State<D121201066DetailScreen> createState() => _D121201066DetailScreenState();
}

class _D121201066DetailScreenState extends State<D121201066DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thesalonika Aprilia Detail Screen'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.network(
                      'https://sikola.unhas.ac.id/app/upload/users/4/45341/big_45341_5f5a27bb12793_Foto-3x4-crop.jpg?rand=633445ed36d4c',
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
                            'Thesalonika Aprilia',
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
                            'Olahraga',
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
                              Icons.mic
                          ),
                          Icon(
                              Icons.sports_basketball
                          ),
                          Icon(
                              Icons.sports_esports_outlined
                          ),
                          Icon(
                              Icons.tag_faces
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