import 'package:flutter/material.dart';

class ProfilFirman extends StatefulWidget {
  const ProfilFirman({Key? key}) : super(key: key);

  @override
  State<ProfilFirman> createState() => _ProfilFirmanState();
}

class _ProfilFirmanState extends State<ProfilFirman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Firman'),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 310,
          height: 496,
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
                    MaterialPageRoute(builder: (context) => const TentangFirman()),
                  );
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(200, 200), shape: const CircleBorder(), backgroundColor: Colors.black),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/FotoFirman.jpg'),
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
                          color: Colors.black,
                          child: Center(
                              child: Text(
                                'Firmansyah Jaya Kusuma',
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
                          color: Colors.black,
                                    child: Center(
                                      child: Text(
                                        'Bermain Game',
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
                          color: Colors.black,
                                    child: Center(
                                        child: Text(
                                          'Hitam',
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


class TentangFirman extends StatefulWidget {
  const TentangFirman({Key? key}) : super(key: key);

  @override
  State<TentangFirman> createState() => _TentangFirmanState();
}

class _TentangFirmanState extends State<TentangFirman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Firman'),
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
                    //kotak foto profil
                    Container(
                        width: 113,
                        height: 113,
                        decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage('assets/FotoFirman.jpg')),
                          color: Colors.grey, 
                          borderRadius: BorderRadius.circular(30)),
                      ),
                    //Nama hobi bintang
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 7, 0, 7),
                            width: 240,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey, 
                              borderRadius: BorderRadius.circular(5)),
                             child: const Text(
                              'Firmansyah Jaya Kusuma',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                            width: 240,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.grey, 
                              borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                              'Bermain Game',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                        ),
                        //taruh bintang bintang
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/gerigi.png')),
                                ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/gerigi.png')),
                                ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/gerigi.png')),
                                ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/gerigi.png')),
                                ),
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(20, 0, 0, 7),
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/gerigi.png')),
                                ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                //Deskripsi singkat
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 380,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.grey, 
                      borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'I am Trying to learn and mastering the Game Development things',
                          style: TextStyle(fontSize: 16),
                          textAlign: TextAlign.justify,
                    ),
                      ),
                ),
                //Deskripsi panjang
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 380,
                    height: 344,
                    decoration: BoxDecoration(
                      color: Colors.grey, 
                      borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                        'Arti lorem ipsum : Demikian pula, tidak adakah orang yang mencintai atau mengejar atau ingin mengalami penderitaan, bukan semata-mata karena penderitaan itu sendiri, tetapi karena sesekali terjadi keadaan di mana susah-payah dan penderitaan dapat memberikan kepadanya kesenangan yang besar. Sebagai contoh sederhana, siapakah di antara kita yang pernah melakukan pekerjaan fisik yang berat, selain untuk memperoleh manfaat daripadanya? Tetapi siapakah yang berhak untuk mencari kesalahan pada diri orang yang memilih untuk menikmati kesenangan yang tidak menimbulkan akibat-akibat yang mengganggu, atau orang yang menghindari penderitaan yang tidak menghasilkan kesenangan?“',
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
