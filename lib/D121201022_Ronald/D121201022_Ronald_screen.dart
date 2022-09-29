import 'package:flutter/material.dart';
import 'package:tugas1/main.dart';

class D121201022ProfileScreen extends StatefulWidget {
  const D121201022ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201022ProfileScreen> createState() =>
      _D121201022ProfileScreenState();
}

class _D121201022ProfileScreenState extends State<D121201022ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
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
                          'D121201022 Ronald Chriswanto Suwandi Profile Screen')));
            },
          ),
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(
                10,
              ),
            ),
          ),
          title: const Text(
            'D121201022 Ronald Chriswanto Suwandi',
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
                          colors: [Colors.black, Colors.lightBlueAccent]),
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
                            'assets/35068.jpg',
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
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5843BE),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.lightBlue)),
                        child: const Center(
                          child: Text(
                            'Ronald Chriswanto Suwandi',
                            style:
                            TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5843BE),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.lightBlue)),
                        child: const Center(
                          child: Text(
                            'Bermain game',
                            style:
                            TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                            color: const Color(0xFF5843BE),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.lightBlue)),
                        child: const Center(
                          child: Text(
                            'Biru',
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
                    builder: (ctx) => const D121201022ProfileScreen()));
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
                        image: AssetImage('assets/35068.jpg')),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      width: 200,
                      child: Text(
                        'Ronald Chriswanto Suwandi',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        'CV.Opto Elektronik',
                        overflow: TextOverflow.ellipsis,
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
                child: const Text(
                  'Saya adalah mahasiswa',
                )),
            const SizedBox(
                child: Text(
                  'sekarang saya akan fokus menyelesaikan kuliah sambil cari uang'
                      'setelah lulus saya akan bekerja mencari pengalmaan dan melanjutkan usaha',
                  textAlign: TextAlign.justify,
                ))
          ],
        ),
      ),
    );
  }
}