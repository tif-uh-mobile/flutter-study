import 'package:flutter/material.dart';

class D121201081ProfileScreen extends StatefulWidget {
  const D121201081ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201081ProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201081ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('D121201081 Agunawan Ali Nur profile screen'),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/foto.jpg"),
                    fit: BoxFit.fill,
                  )),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: 280,
                      height: 70,
                      padding: EdgeInsets.only(top: 15, left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.lightBlue,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Agunawan Ali Nur",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 280,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.lightBlue,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Dengar musik",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.music_video,
                              size: 40,
                              color: Colors.blue,
                            ))),
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.book,
                              size: 40,
                              color: Colors.blue,
                            ))),
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.games,
                              size: 40,
                              color: Colors.blue,
                            ))),
                      ],
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.only(left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2,
                ),
              ),
              child: Text(
                "Seorang mahasiswa semester 5",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.lightBlue,
                  width: 2,
                ),
              ),
              child: Text(
                "Halo, saya Agunawan Ali Nur. Biasa dipanggil Agung. Sedang menempuh pendidikan di Universitas Hasanuddin prodi Teknik Informatika",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
