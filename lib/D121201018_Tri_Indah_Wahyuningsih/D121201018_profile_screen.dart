import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

var star_icon = 0;

class D121201018ProfileScreen extends StatefulWidget {
  const D121201018ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201018ProfileScreen> createState() =>
      _D121201018ProfileScreenState();
}

class _D121201018ProfileScreenState extends State<D121201018ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const MyHomePage(
                          title: 'D121201018_Tri Indah Wahyuningsih Screen')));
            },
          ),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(
                10,
              ),
            ),
          ),
          title: const Text('D12121018 Tri Indah Wahyuningsih'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background_1.jpg'),
                            fit: BoxFit.fill)),
                    width: double.infinity,
                    child: Column(children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const AboutMe()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          backgroundImage:
                              AssetImage('assets/profile_picture_1.jpeg'),
                          radius: 85,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Tri Indah Wahyuningsih',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Hobby : Renang',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Fav. Color : Biru',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMe();
}

class _AboutMe extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text('About Me'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => const D121201018ProfileScreen()));
          },
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              9.0,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background_1.jpg'),
                fit: BoxFit.fill)),
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/profile_picture_1.jpeg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Tri Indah Wahyuningsih',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Hobby :  Renang',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          5,
                          (index) => IconButton(
                              onPressed: () {
                                setState(() {
                                  star_icon = index + 1;
                                });
                              },
                              color: Colors.white30,
                              icon: index < star_icon
                                  ? const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )
                                  : const Icon(Icons.star_border))),
                    )
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10, bottom: 25),
                child: Text('Biografi Singkat',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold))),
            Container(
                child: Text(
              'Nama saya tri indah wahyuningsih, biasa dipanggil tri, saat ini sedang berkuliah di Universitas Hasanuddin program studi Teknik Informatika 2020 ',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ))
          ],
        ),
      ),
    );
  }
}
