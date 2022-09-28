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
        title: Text("Profile"),
      ),
      body: Stack(
        children: [
          Container(
            color: Color(0xffe4f0fe),
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
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/gambar/57350b28e4189837f4b38ae57135882805eab82c_s2_n1.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,

                      ),
                    )
                ),

                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.blue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Nabila",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.lightBlue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Drawing",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  height: 50,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.green,
                        Colors.lightBlue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Green",
                      style: TextStyle(
                        fontSize: 20,
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
                child: Container(

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/gambar/57350b28e4189837f4b38ae57135882805eab82c_s2_n1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                width: 150,
                height: 150,
                margin: EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
              ),

              Column(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.lightGreen,
                          Colors.blue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Nabila",
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
                    height: 40,
                    margin: EdgeInsets.only(
                      top: 10,
                    ),

                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue,
                          Colors.lightGreen,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Drawing",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: List.generate(
                      5,
                          (index) => IconButton(
                          onPressed: () {},
                          color: Colors.blue,
                          icon: const Icon(Icons.emoji_emotions_sharp)),
                    ),
                  ),
                ],
              ),
            ],
          ),


          Container(
            width: 400,
            height: 50,
            margin: EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.lightGreen,
                ],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "About me :)",
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
            height: 200,
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.lightGreen,
                ],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "     Hai ges, aku adalah salah satu mahasiswa semester 5 dari Universitas Hasanuddin, Fakultas Teknik, Departemen Teknik Informatika. Asal daerahku adalah Kabupaten Buton, Sulawesi Tenggara.",
                style: TextStyle(
                  fontSize: 14,
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
