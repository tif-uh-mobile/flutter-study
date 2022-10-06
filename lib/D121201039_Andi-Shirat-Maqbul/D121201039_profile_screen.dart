import 'package:flutter/material.dart';

class D121201039ProfileScreen extends StatefulWidget {
  const D121201039ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201039ProfileScreen> createState() => _D121201039ProfileScreenState();
}

class _D121201039ProfileScreenState extends State<D121201039ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('D121201039 Andi Shirat Maqbul Profile Screen')
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
                        image: AssetImage("lib/assets/andes.jpg"),
                        fit: BoxFit.fill,
                      )),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 40),
                      width: 230,
                      height: 70,
                      padding: EdgeInsets.only(top: 15, left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.redAccent,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Andi Shirat Maqbul",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 230,
                      height: 70,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.redAccent,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        "Travelling",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.computer,
                              size: 30,
                              color: Colors.red,
                            ))),
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.draw,
                              size: 30,
                              color: Colors.red,
                            ))),
                        IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.movie,
                              size: 30,
                              color: Colors.red,
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
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
              child: Text(
                "Jelajah alam, Cari tempat tenang",
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
                  color: Colors.redAccent,
                  width: 2,
                ),
              ),
              child: Text(
                "Yo bro..My Name is Andi Shirat Maqbul, My friend usually call me Andes. i truly like to go travel and make some memories either alone or with my friend. i've interest with informatics also cause my dream job is a job that we can work at it anywhere.",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
    );
  }
}
