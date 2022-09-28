import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSatu(),
    );
  }
}

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biodata"),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xffffffff),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PageDua(),
                      ),
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 245,
                    decoration: BoxDecoration(
                      image : DecorationImage(
                        image : AssetImage("assets/nisa.jpg"),
                        fit:BoxFit.cover,
                      ),
                      shape:BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 45,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Annisa Darwis",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Olahraga",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange,
                        Colors.red,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Orange",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Biodata",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  children : [
                    Image.asset(
                      "assets/nisa.jpg" ,
                      width : 150.0 ,
                      height : 200.0 ,
                      fit : BoxFit.cover ,
                    ),
                  ],
                ),
                margin: EdgeInsets.only(
                  top: 10,
                  left: 10,
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 45,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.lightBlueAccent,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Annisa Darwis",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 45,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.lightBlue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Olahraga",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      5,
                          (index) => IconButton(
                          onPressed: () {},
                          color: Colors.orange,
                          icon: const Icon(Icons.emoji_emotions_sharp)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 400,
            height: 45,
            margin: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlueAccent,
                  Colors.white,
                ],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Program flutter sederhana pada android studio",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 400,
            height: 400,
            margin: EdgeInsets.only(
              top: 20,
              left : 10,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.lightBlueAccent,
                ],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "Perkenalkan saya Annisa Darwis, biasa dipanggil Nisa. Saat ini saya merupakan mahasiswa jurusan teknik informatika di fakultas teknik, universitas hasanuddin. Program flutter merupakan hal yang masih baru saya pelajari, khususnya saat mengambil mata kuliah pemrograman mobile. Perkenalkan saya Annisa Darwis, biasa dipanggil nisa. saat ini saya merupakan mahasiswa jurusan teknik informatika di fakultas teknik, universitas hasanuddin. Program flutter merupakan hal yang masih baru saya pelajari, khususnya saat mengambil mata kuliah pemrograman mobile. Perkenalkan saya Annisa Darwis, biasa dipanggil nisa. saat ini saya merupakan mahasiswa jurusan teknik informatika di fakultas teknik, universitas hasanuddin.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
