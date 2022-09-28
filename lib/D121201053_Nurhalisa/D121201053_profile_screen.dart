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
            color: Color(0xffd3edf1),
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
                      image : DecorationImage(
                        image : AssetImage("assets/profil.jpg"),
                        fit:BoxFit.cover,
                      ),
                      shape:BoxShape.circle,
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 0,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.blue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Nurhalisa",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.blue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Badminton",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 180,
                  height: 40,
                  margin: EdgeInsets.only(
                    top: 10,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.purple,
                        Colors.blue,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Blue and Black",
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





//Halaman Dua
class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Biodata ",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [

              Container(
                color: Colors.blueAccent[600],
                child: Container(
                  decoration: BoxDecoration(
                    image : DecorationImage(
                      image : AssetImage("assets/profil.jpg"),

                    ),

                  ),
                ),

                width: 100,
                height: 150,
                margin: EdgeInsets.only(
                  left:10,
                  right: 20,
                  top: 0,
                ),

              ),
              Column(
                children: [
                  Container(
                    width: 250,
                    height: 60,
                    margin: EdgeInsets.only(
                        top: 10
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.blue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Center(
                      child: Text(
                        "Nurhalisa",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: AutofillHints.familyName,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                    ),
                  ),


                  Container(
                    width: 250,
                    height: 60,
                    margin: EdgeInsets.only(
                      top: 5,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.purple,
                          Colors.blue,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Center(
                      child: Text(
                        "Badminton",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: AutofillHints.postalAddress,
                          fontSize: 18,

                        ),
                      ),
                    ),
                  ),

                  Row(
                    children: List.generate(
                      4,
                          (index) => IconButton(
                          onPressed: () {},
                          color: Colors.deepPurpleAccent[400],
                          icon: const Icon(Icons.emoji_events)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 500,
            height: 40,
            margin: EdgeInsets.only(
              left: 10,
              right:10,
              top: 15,
            ),
            decoration: BoxDecoration(
              color:Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(1),
            ),
            child: Center(
              child: Text(
                "About Me",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: AutofillHints.postalAddress,
                  fontWeight: FontWeight.bold,




                ),
              ),
            ),
          ),
          Container(
            width: 500,
            height: 170,
            margin: EdgeInsets.only(
              left: 10,
              right:10,
              top: 5,
            ),
            decoration: BoxDecoration(
              color:Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(0),

            ),
            child: Center(
              child: Text(
                "       Hay, perkenalkan nama saya Nurhalisa. Kalian bisa    "
                    "  memanggil sata Ica."
                    "    Saya dari departemen Teknik informatika angkatan 2020. Saat ini kesibukan saya adalah"
                    "   kuliah dan mengikuti kegiatan organisasi seperti latihan panahan"
                    "   dan mengikuti lomba gemastik yang diadakan oleh dikti."
                    " Saya tertarik dengan web developer terutama pada front end."
                    "  ",
                style: TextStyle(

                  color: Colors.white,
                  fontFamily: AutofillHints.postalAddress,



                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
