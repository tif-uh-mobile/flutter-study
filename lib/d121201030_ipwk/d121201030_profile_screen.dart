import 'package:flutter/material.dart';

class D121201030ProfileScreen extends StatefulWidget {
  const D121201030ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201030ProfileScreen> createState() =>
      _D121201030ProfileScreenState();
}

class _D121201030ProfileScreenState extends State<D121201030ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Profile Details"),
      ),
      body: Column(children: [
        Row(children: [
          Container(
            margin: const EdgeInsets.all(12),
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("lib/assets/foto.jpg"), fit: BoxFit.fill),
            ),
          ),
          Column(children: [
            Container(
              margin: const EdgeInsets.only(right: 12),
              width: 236,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey, width: 3)),
              child: const Center(
                child: Text(
                  "Putu Wahyu",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12, right: 12),
              width: 236,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey, width: 3),
              ),
              child: const Center(
                child: Text(
                  "Not a God Gamer",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ]),
        ]),
        Container(
          margin: const EdgeInsets.only(left: 12, right: 12),
          width: double.infinity,
          height: 50,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "About Me:",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 12, right: 12),
          padding: const EdgeInsets.only(left: 12, right: 12, top: 6),
          width: double.infinity,
          height: 360,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey,
              width: 3,
            ),
          ),
          child: const Text(
            "Instagram: @putsstuff123\nTwitter: @PutsStuff\nDana: 082196784236\nValorant ID: YrPutz#030",
            style: TextStyle(fontSize: 16, height: 1.5),
          ),
        ),
      ]),
    );
  }
}
