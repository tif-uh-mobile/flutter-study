import 'package:flutter/material.dart';

var _rating = 0;

class PageSatu extends StatelessWidget {
  const PageSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.40),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(1000, 128, 128, 128),
                        Color.fromARGB(1000, 230, 230, 230),
                      ]),
                    ),
                    width: 300,
                    height: 600,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const PageDua(),
                          ));
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                              image: AssetImage(
                                'lib/asset/avatar.jpg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(1000, 123, 242, 233),
                            Color.fromARGB(1000, 182, 94, 186),
                          ]),
                        ),
                        width: 190,
                        height: 70,
                        margin: const EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Text(
                            'Dimas Permana',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(1000, 123, 242, 233),
                            Color.fromARGB(1000, 182, 94, 186),
                          ]),
                        ),
                        width: 190,
                        height: 70,
                        margin: const EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Text(
                            'Membaca',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromARGB(1000, 123, 242, 233),
                            Color.fromARGB(1000, 182, 94, 186),
                          ]),
                        ),
                        width: 190,
                        height: 70,
                        margin: const EdgeInsets.only(top: 20),
                        child: const Center(
                          child: Text(
                            'Hitam',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageDua extends StatefulWidget {
  const PageDua({super.key});

  @override
  State<PageDua> createState() => _PageDuaState();
}

class _PageDuaState extends State<PageDua> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'D121201007-Dimas Permana',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Profile-Screen'),
        ),
        body: Stack(children: [
          Center(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(1000, 128, 128, 128),
                  Color.fromARGB(1000, 230, 230, 230),
                ]),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 10),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(
                              'lib/asset/avatar.jpg',
                            ),
                          ),
                        ),
                      ),
                      Column(children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          width: 240,
                          child: const Text(
                            'Dimas Permana',
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Divider(),
                        const SizedBox(
                          width: 240,
                          child: Text(
                            'Hobi: Membaca dan Ngoding',
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Divider(),
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
                                ? const Icon(Icons.star)
                                : const Icon(Icons.star_border),
                          ),
                        ))
                      ]),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    'Dimas Permana - 28/10/2002',
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: const Text(
                      'Perkenalkan  nama saya Dimas Permana, Saya sekarang adalah seorang Mahasiswa semester 5 di Universitas Hasanuddin Departemen Teknik Informatika. Ini adalah projek mobile pertama yang saya kerjakan. Saya sangat teratarik dengan perkembangan teknologi terkhususnya di bidang AI. Sekian dari saya Terima Kasih',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontStyle: FontStyle.italic,
                      ),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
