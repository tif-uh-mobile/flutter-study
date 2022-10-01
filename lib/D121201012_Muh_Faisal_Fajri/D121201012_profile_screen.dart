import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

var star_icon = 0;

class D121201012ProfileScreen extends StatefulWidget {
  const D121201012ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201012ProfileScreen> createState() =>
      _D121201012ProfileScreenState();
}

class _D121201012ProfileScreenState extends State<D121201012ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: Colors.green,
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
                          title:
                              'D121201012 Muh. Faisal Fajri Profil Screen')));
            },
          ),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(
                10,
              ),
            ),
          ),
          title: const Text('D12121012 Muh. Faisal Fajri'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/background_full_hd.jpg'),
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
                          backgroundColor: Colors.orange,
                          backgroundImage:
                              AssetImage('assets/profile_picture_circle.png'),
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
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepOrange)),
                        child: const Center(
                          child: Text(
                            'Muh. Faisal Fajri',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepOrange)),
                        child: const Center(
                          child: Text(
                            'Hobby : Sepak Bola',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.deepOrange)),
                        child: const Center(
                          child: Text(
                            'Warna Fav : Hitam',
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
        backgroundColor: Colors.green,
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
                    builder: (ctx) => const D121201012ProfileScreen()));
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
                image: AssetImage('assets/background_full_hd.jpg'),
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
                        image: AssetImage('assets/profile_picture.jpg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Muh. Faisal Fajri',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Hobby :  Sepak Bola',
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
                              color: Colors.green,
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
                child: Text('Kata Kata Motivasi Saya',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))),
            Container(
                child: Text(
              'Everyone Is Genius, '
              '" If you judge a fish on its ability to climb a tree it will it will live its whole life believing that it is stupid "',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.justify,
            ))
          ],
        ),
      ),
    );
  }
}
