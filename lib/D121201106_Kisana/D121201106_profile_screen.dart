import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const biobio());
}

class biobio extends StatelessWidget {
  const biobio({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio Kisana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageSatu(),
    );
  }
}

class PageSatu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 79, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 166, 139, 129),
        title: Text('Profile User'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(60),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 166, 139, 129)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 190,
                      width: 190,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PageDua()),
                          );
                        },
                      ),
                      margin: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "image/profile_D121201106.jpeg",
                              ),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                          child: Text("Kisana Adzan Sitorus",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("belajar mencintai dirinya",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      margin: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text("Biru, Hijau, Hitam dan Putih",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class PageDua extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 79, 64),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 166, 139, 129),
        title: Text('Kisana Adzan Sitorus'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 600,
            height: 160,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 166, 139, 129),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'image/profile_D121201106.jpeg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  child: Column(children: [
                    Container(
                      width: 200,
                      height: 40,
                      margin: EdgeInsets.only(top: 15, bottom: 7),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text("Kisana",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    Container(
                      width: 200,
                      height: 40,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text("Belajar mencintai dirinya",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                              textAlign: TextAlign.center)),
                    ),
                    Container(
                        child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        )
                      ],
                    ))
                  ]),
                ),
              ],
            ),
          ),
          Container(
            width: 600,
            height: 60,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text("Si beban bernama kisana",
                    style: TextStyle(fontSize: 20, color: Colors.white))),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 600,
            height: 200,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(
                    "Pernahkah kamu melihat daun jatuh dari pohon? Itu jatuh ke atas terlebih dahulu, dan kemudian melayang ke tanah, sama seperti aku menemukan diriku melayang ke arahmu.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
