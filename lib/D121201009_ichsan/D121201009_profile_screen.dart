import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

class D121201009ProfileScreen extends StatefulWidget {
  const D121201009ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201009ProfileScreen> createState() => _D121201009ProfileScreenState();
}

class _D121201009ProfileScreenState extends State<D121201009ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
                        title: 'D121201009 A. Ichsan Mudatsir ')));
          },
        ),
        title: Text('A. Ichsan Mudatsir', style:TextStyle(
            fontWeight: FontWeight.w500, fontSize: 15),
        ),
        flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(10),
            )
        ),
      ),
      body: Stack(
        children: [
          Column(children: [
            Expanded(flex: 5, child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.grey]),
              ),
              child: Column(children: [
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                  },
                  child: ClipOval(
                      child: Image.asset('images/FotoPortofolio.jpg', width: 100,height: 100,fit: BoxFit.cover,)
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0XFF6D8CD9),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)
                    ),
                    child: const Center(
                      child: Text('My name is A. Ichsan Mudatsir', style: TextStyle(
                          color: Colors.white, fontSize: 15),
                      ),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0XFF6D8CD9),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)
                    ),
                    child: const Center(
                      child: Text('My Hobby is play musik instrument and BasketBall', style: TextStyle(
                          color: Colors.white, fontSize: 15),
                      ),),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0XFF6D8CD9),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey)
                    ),
                    child: const Center(
                      child: Text('My favorit color is Blue, Black and grey', style: TextStyle(
                          color: Colors.white, fontSize: 15),
                      ),),
                  ),
                ),
              ]),
            ),
            )
          ],)
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => const D121201009ProfileScreen()));
          },
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              10,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/FotoPortofolio.jpg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'A. Ichsan M',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Musik dan basket',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                        children: List.generate(3,
                                (index) => IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0.0),
                              icon: const Icon(Icons.insert_emoticon),
                              iconSize: 20,
                            )))
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  'Informatics Engginering Student',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                )),
            const SizedBox(height: 10),
            SizedBox(
                child: Text(
                  'Saya merupakan mahasiswa semester lima yang aktif dalam perkuliahan. saya juga suka berolahraga terutama basket.'
                      'Saya juga senang dalam bermusik, saya memiliki band yang biasa tampil di cafe yang ada di makassar. dan dengan itu saya bisa membangun relasi.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}




