import 'package:flutter/material.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Hendra'),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 310,
          height: 530,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(30)),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const TentangHendra()),
                  );
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 200), shape: const CircleBorder(), backgroundColor: Colors.blueGrey),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/hendra.jpg'),
                radius: 100,

                ),),

                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: SizedBox(
                        height: 50,
                        width: 260,
                        child: Card(
                          color: Colors.blueGrey,
                          child: Center(
                              child: Text(
                                'Hendra Adi Saputra',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 17,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(11.0),
                      child: SizedBox(
                        height: 50,
                        width: 260,
                        child: Card(
                          color: Colors.blueGrey,
                                    child: Center(
                                      child: Text(
                                      'Berpetualang',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(11.0),
                  child: SizedBox(
                    height: 50,
                    width: 260,
                    child: Card(
                      color: Colors.blueGrey,
                                child: Center(
                                    child: Text(
                                      'Biru',
                                      style: TextStyle(
                                        fontFamily: 'Arial',
                                        fontSize: 17,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                        ),
                      ),
                    ),
                  ],
                )
            ],
          ),
        ),
        ),
      ),
    );
  }
}

class TentangHendra extends StatefulWidget {
  const TentangHendra({Key? key}) : super(key: key);

  @override
  State<TentangHendra> createState() => _TentangHendraState();
}

class _TentangHendraState extends State<TentangHendra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Hendra'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                    Container(
                        width: 113,
                        height: 113,
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage('assets/hendra.jpg')),
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(30)),
                       ),

                      Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 7, 0, 7),
                                width: 240,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(5)),
                                child: const Text(
                                  'Hendra Adi Saputra',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                width: 240,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(5)),
                                  child: const Text(
                                  'Berpetualang',
                                  style: TextStyle(fontSize: 18),
                                  textAlign: TextAlign.center,
                                ),
                            ),

                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/hendra.jpg')),
                                    ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/hendra.jpg')),
                                    ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/hendra.jpg')),
                                    ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/hendra.jpg')),
                                    ),
                                ),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/hendra.jpg')),
                                    ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 380,
                      height: 56,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Be a good person',
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify,
                      ),
                        ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 380,
                      height: 344,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(5)),
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                          '“Sedekah tidak sama dengan matematika bisa ditambah, dikurang, dibagi dan dikali. Karena sedekah itu akan berlimpah dan berkalilipat kembali kepada kita”',
                          textAlign: TextAlign.justify,
                      ),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
    );
  }
}