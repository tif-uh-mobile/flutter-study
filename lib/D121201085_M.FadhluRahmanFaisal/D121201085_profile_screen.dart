import 'package:flutter/material.dart';
var _rating = 0;

class Profiles extends StatelessWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Profile"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(20),
              width: 200,
              height: 330,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutMe()));

                    },
                    child :CircleAvatar(
                      radius: 70,
                      backgroundImage:AssetImage("assets/fotogw.jpg"),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "M. Fadhlu Rahman Faisal",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Bermain Game",
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Biru dan Hitam",
                        style: TextStyle(fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 15),
                    width: 200,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(9)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Me"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bgtek.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(10),
              width: 500,
              height: 600,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 125,
                        height: 155,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/fotogw.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: Card(
                                color: Colors.blueAccent,
                                margin: EdgeInsets.symmetric(vertical:5, horizontal: 10),
                                child: Center(child: Text("M. Fadhlu Rahman",
                                  style: TextStyle(color: Colors.white,
                                      fontSize: 24, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.left,)),
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              height: 50,
                              child: Card(
                                  color: Colors.blueAccent,
                                  margin: EdgeInsets.symmetric(vertical:5, horizontal: 10),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Bermain Game",
                                      style: TextStyle(color: Colors.white,
                                          fontSize: 24, fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,),
                                  )),
                            ),
                            Row(
                              children: List.generate(
                                5,
                                    (index) => IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _rating = index + 1;
                                    });
                                  },
                                  color: Colors.amber,
                                  icon: index < _rating
                                      ? const Icon(Icons.tag_faces)
                                      : const Icon(Icons.sentiment_dissatisfied),
                                  iconSize: 20,
                                ),
                              ),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Jangan lupa full senyum ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    width: 380,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Menghabiskan gaji untuk diriku sendiri  "
                            "      Membeli satu tiket film terkini          "
                            "       Memesan yang cukup hanya untuk satu porsi   "
                            "Menyanyikan Kunto Aji di tengah muda-mudi",
                        style: TextStyle(letterSpacing:1, wordSpacing: 2,
                          color: Colors.black, fontSize: 14, ),
                      ),
                    ),
                    width: 380,
                    height: 370,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}