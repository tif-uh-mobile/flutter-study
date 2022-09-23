import 'package:flutter/material.dart';

class NimProfileScreen extends StatefulWidget {
  const NimProfileScreen({Key? key}) : super(key: key);

  @override
  State<NimProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<NimProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 5, left: 32),
                width: 100.0,
                height: 130.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/Sanss.png'))),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                    ),
                    width: 220,
                    height: 40,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Center(
                      child: Text(
                        "Ikhsan Jihadi",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                    width: 220,
                    height: 25,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    child: Center(
                      child: Text(
                        "Ngoding",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {}, icon: (Icon(Icons.facebook))),
                      IconButton(
                          onPressed: () {}, icon: (Icon(Icons.whatsapp))),
                      IconButton(
                          onPressed: () {}, icon: (Icon(Icons.flutter_dash))),
                    ],
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 15),
            width: 340,
            height: 30,
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: Center(
              child: Text(
                "Universitas Hasanuddin",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 15),
            padding: EdgeInsets.all(8),
            width: 340,
            height: 500,
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: Text(
              "Departemen Teknik Informatika\nFakultas Teknik\n",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
