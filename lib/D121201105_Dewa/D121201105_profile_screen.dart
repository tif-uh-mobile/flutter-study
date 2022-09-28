import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const BioDewa());
}

class BioDewa extends StatelessWidget {
  const BioDewa({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bio DEWA',
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Dewa Yoga Pratama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(60),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
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
                                'assets/images/dewa.jpg',
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
                          child: Text("Dewa Yoga Pratama",
                              style: TextStyle(
                                  fontSize: 20,
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
                          child: Text("Jalan-Jalan",
                              style: TextStyle(
                                  fontSize: 20,
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
                          child: Text("Biru",
                              style: TextStyle(
                                  fontSize: 20,
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Bagian 2'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 600,
            height: 160,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/dewa.jpg',
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
                          child: Text("Dewa",
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
                          child: Text("Jalan-Jalan",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.white))),
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
                child: Text("Saya dewa tapi itu cuma nama",
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
                    "Merasakan kepedihan, memikirkan kepedihan, menerima kepedihan untuk mengetahui kepedihan. Orang yang tidak tahu kepedihan tidak akan pernah merasakan kedamaian sebenarnya. Dunia harus menerima kepedihan. SHIRA TENSEIII!!!",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 18, color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
