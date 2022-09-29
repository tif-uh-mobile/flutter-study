import 'package:flutter/material.dart';

class D121201076ProfileScreen extends StatefulWidget {
  const D121201076ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201076ProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201076ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('D121201076 Muhammad Alif Maulana profile screen'),
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
                    image: AssetImage("assets/profil.jpg"),
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
                        "Muhammad Alif",
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
                        "suka ngedit",
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
                "mahasiswa aiti semester 5",
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
                "Hi. I am Muhammad Alif Maulana, a 5th semester Informatics Engineering student. I have an interest in environmental issues, especially technology, digital media art, fulfillment of children's rights, and education for about 5 years, I have been in the world of fulfilling children's rights through children's forums and as a facilitator. In this field, I have various contributions in the fields of design and public speaking. I also have an interest in content creation and business, so I apply it in my role as Creative Media in one of the organizations and pursue a poster competition which often wins provincial and national level competitions. What I do is supported by my high and easy learning desire and adapt.",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ));
  }
}
