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
          title: Text('D121201025 Gabriel Dylan Profile Screen'),
        ),
        body: Center(
            child: Column(children: [
          // children: const [
          //  NavigateButton(
          //      name: 'D121201025-Gabriel Dylan', page: NimProfileScreen())

          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const ProfilPage()));
            },
            child: Container(
                margin: EdgeInsets.only(top: 32),
                width: 190.0,
                height: 190.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/Untitled31.png')))),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                "Gabriel Dylan Valentino",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                "Membaca",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 20),
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                "Abu-abu",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ])));
  }
}

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('D121201025 Gabriel Dylan Profile Screen'),
        ),
        body: Center(
          child: Column(
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
                            fit: BoxFit.contain,
                            image: AssetImage('assets/images/Untitled31.png'))),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 20,
                        ),
                        width: 220,
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            "Gabriel Dylan",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                        width: 220,
                        height: 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            "Membaca",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 15),
                width: 340,
                height: 30,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Center(
                  child: Text(
                    "Universitas Hasanuddin",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 20, top: 15, bottom: 5, right: 15),
                padding: EdgeInsets.all(8),
                width: 340,
                height: 500,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Text(
                  "Seorang mahasiswa Teknik Informatika di Universitas Hasanuddin",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
