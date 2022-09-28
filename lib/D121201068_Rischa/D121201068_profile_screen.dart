import 'package:flutter/material.dart';

class D121201068ProfileScreen extends StatefulWidget {
  const D121201068ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201068ProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201068ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('D121201068 Rischa Nurul Hidayati profile screen'),
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
                    image: AssetImage("assets/ch.jpg"),
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
                          color: Color.fromRGBO(73, 211, 94, 1),
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Rischa Nurul Hidayati",
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
                          color: Color.fromRGBO(73, 211, 94, 1),
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Berimajinasi",
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
                              color: Color.fromRGBO(73, 211, 94, 1),
                            ))),
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.book,
                              size: 40,
                              color: Color.fromRGBO(73, 211, 94, 1),
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
                "Mahasiswa Teknik Informatika",
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
                  color: Color.fromRGBO(73, 211, 94, 1),
                  width: 2,
                ),
              ),
              child: Text(
                "Project ini dibuat untuk memenuhi ttugas pemrograman mobile",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
