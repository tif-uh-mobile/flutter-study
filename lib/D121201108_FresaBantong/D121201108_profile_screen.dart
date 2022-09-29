import 'package:flutter/material.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xff94cfef),
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
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/poto.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Color(0xff050e8c),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Fresa P. E. Bantong",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Color(0xff050e8c),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Membaca",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 150,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue,
                        Color(0xff050e8c),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Biru",
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
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/poto2.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 40,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Color(0xff050e8c),
                          Colors.black
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Fresa",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 40,
                    margin: EdgeInsets.only(top: 10, bottom: 5),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Color(0xff050e8c),
                          Colors.black
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Membaca",
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
                          color: Colors.amber,
                          icon: const Icon(Icons.star_purple500)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 400,
            height: 65,
            margin: EdgeInsets.only(
              top: 20,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff050e8c), Colors.black],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Sekilas tentang saya",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            width: 400,
            height: 300,
            margin: EdgeInsets.only(
              top: 10,
              left: 5,
              right: 5,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff050e8c), Colors.black],
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "     HELLO EVERYONE..."
                " Saya Fresa Bantong seorang mahasiswa semester 5 dengan Nim D121201108. Saya mengambil jurusan Teknik Informatika di Universitas Hasanuddin."
                " ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
