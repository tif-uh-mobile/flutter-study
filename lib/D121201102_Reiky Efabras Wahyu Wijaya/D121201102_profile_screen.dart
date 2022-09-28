import 'package:flutter/material.dart';

class D121201102ProfileScreen extends StatefulWidget {
  const D121201102ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201102ProfileScreen> createState() => _D121201102ProfileScreenState();
}

class _D121201102ProfileScreenState extends State<D121201102ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('D121201102 Reiky Efabras Wahyu Wijaya Profile Screen'),
        backgroundColor: Colors.amber.shade400,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) => const NextPage()));
                },
                child: const CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/pict.jpg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.amberAccent.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  title: Text(
                    'Reiky Efabras Wahyu Wijaya',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.amberAccent.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  title: Text(
                    'Badminton',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.amberAccent.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ListTile(
                  title: Text(
                    'Kuning',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.amber.shade400,
          title: const Text ('Profil'),
          centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 160,
                      width: 160,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage('images/pict.jpg')),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 250,
                          padding: const EdgeInsets.all(5.0),
                          margin: const EdgeInsets.only(left: 170, top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.amberAccent.shade400, width: 2.0,)
                          ),
                          child:
                          const Text(
                            'Reiky Efabras',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 170, top: 10),
                          padding: const EdgeInsets.all(5.0),
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.amberAccent.shade400, width: 2.0,)
                          ),
                          child:
                          const Text(
                            'Badminton',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 170, top: 10),
                          padding: const EdgeInsets.all(5),
                          width: 250,
                          child:
                          const Text(
                            '🏸🏸🏸',
                            style: TextStyle(
                                fontSize: 20
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          height: 40,
                          width: 400,
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.amberAccent.shade400, width: 2.0,)
                          ),
                          child:
                          const Text(
                            'Sibuk',
                            style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          height: 200,
                          width: 400,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.amberAccent.shade400, width: 2.0,)
                          ),
                          child:
                          const Text(
                            'Saya Reiky Efabras Wahyu Wijaya, akrab disapa Reiky. Saya adalah mahasiswa teknik informatika, Universitas Hasanuddin.',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}