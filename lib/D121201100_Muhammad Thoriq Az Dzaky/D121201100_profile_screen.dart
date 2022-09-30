import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

class D121201100ProfileScreen extends StatefulWidget {
  const D121201100ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201100ProfileScreen> createState() =>
      _D121201100ProfileScreenState();
}

class _D121201100ProfileScreenState extends State<D121201100ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
        appBar: AppBar(
          backgroundColor: (Colors.transparent),
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
                          'D1212011000 Muhammad Thoriq Az Dzaky')));
            },
          ),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(
                10,
              ),
            ),
          ),
          title: Text(
            'D121201100 Muhammad Thoriq Az Dzaky',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 15
            ),
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
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.orange, Colors.redAccent]),
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
                            'assets/D121201100_Muhammad Thoriq Az Dzaky.jpeg',
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
                        width: 250,
                        decoration: BoxDecoration(
                            color: const Color(0xFFffae42),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Muhammad Thoriq Az Dzaky',
                            style:
                            TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: const Color(0xFFffae42),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Basketball',
                            style:
                            TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: const Color(0xFFffae42),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white)),
                        child: const Center(
                          child: Text(
                            'Merah',
                            style:
                            TextStyle(color: Colors.white, fontSize: 15.0),
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
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                    builder: (ctx) => const D121201100ProfileScreen()));
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
                        image: AssetImage('assets/D121201100_Muhammad Thoriq Az Dzaky.jpeg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Muhammad Thoriq Az Dzaky',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Front-End Developer',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Row(
                        children: List.generate(
                            4,
                                (index) => IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0.0),
                              icon: const Icon(Icons.star_border),
                              iconSize: 20,
                            )))
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Saya adalah Front-End Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
                child: Text(
                  'Memang rencana yang saya inginkan untuk masa depan saya tak ada henti-hentinya, banyak sekali yang ingin saya raih dan  capai setelah lulus kuliah. '
                      'Rencana lain saya selain menjadi pengusaha saya pun ingin membahagiakan kedua orang tua saya.dengan cara menjadi seseorang yang sukses, dan menjadi anak yang bisa dibanggakan oleh orang tua. '
                      'Kesuksesan itu terbilang nomor satu dalam rencana masa depan, jadi kita harus membuang rasa malas dalam diri kita agar kita bisa menjadi orang yang sukses.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}