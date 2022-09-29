import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

var _rating = 0;

class D121201072ProfileScreen extends StatefulWidget {
  const D121201072ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201072ProfileScreen> createState() =>
      _D121201072ProfileScreenState();
}

class _D121201072ProfileScreenState extends State<D121201072ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(232, 24, 50, 250),
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
                              'D121201072 Muhammad Ilham Nur Furqan Profile Screen')));
            },
          ),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(10)
            ),
          ),
          title: Text(
            'D121201072 Muhammad Ilham Nur Furqan',
          ),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                          color: Color.fromARGB(1000, 126, 232, 250),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const DetailPage()));
                        },
                        child: ClipOval(
                          child: Image.asset(
                            'assets/profile.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(232, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            'Muhammad Ilham Nur Furqan',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(232, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Hobi saya adalah Badminton',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(232, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Warna kesukaan saya adalah Biru',
                            style:
                                TextStyle(color: Colors.black87, fontSize: 15.0),
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

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(232, 24, 50, 250),
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
                    builder: (ctx) => const D121201072ProfileScreen()));
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
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                  color: Color.fromARGB(1000, 126, 232, 250),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
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
                            image: AssetImage('assets/profile.jpg')),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Muhammad Ilham Nur Furqan',
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            'Hasanuddin University',
                            overflow: TextOverflow.ellipsis,
                          ),
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
                              color: Color.fromARGB(255, 220, 40, 142),
                              icon: index < _rating
                                  ? const Icon(Icons.favorite)
                                  : const Icon(Icons.favorite_border),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'About Me:',
                    )),
                SizedBox(
                    child: Text(
                  'Saya adalah mahasiswa Teknik Informatika di Universitas Hasanuddin angkatan 2020'
                  ' Saya berharap setelah lulus dari Teknik Informatika UNHAS dapat membuka lapangan pekerjaan baru. ',
                  textAlign: TextAlign.justify,
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
