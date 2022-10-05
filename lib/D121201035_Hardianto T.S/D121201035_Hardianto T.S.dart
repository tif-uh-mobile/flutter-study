import 'package:flutter/material.dart';

var rate = 0;
var _isFavorite = true;

class ProfilHTS extends StatefulWidget {
  const ProfilHTS({Key? key}) : super(key: key);

  @override
  State<ProfilHTS> createState() => _ProfilHTSState();
}

class _ProfilHTSState extends State<ProfilHTS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201035_Hardianto Tandi Seno'),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          width: 310,
          height: 496,
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(15)),

        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ElevatedButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutHTS()),
                  );
                },
                style: ElevatedButton.styleFrom(fixedSize: const Size(150, 150), shape: const CircleBorder(), backgroundColor: Colors.lightGreen),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/2.jpg'),
                radius: 90,
                
                ),),
              

                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 50,
                        width: 260,
                        child: Card(
                          color: Colors.green,
                          child: Center(
                              child: Text(
                                'Hardianto T.S',
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 50,
                        width: 260,
                        child: Card(
                          color: Colors.green,
                                    child: Center(
                                      child: Text(
                                        'Dengar Musik',
                                        style: TextStyle(
                                          fontFamily: 'Arial',
                                          fontSize: 17,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: SizedBox(
                        height: 50,
                        width: 260,
                        child: Card(
                          color: Colors.green,
                                    child: Center(
                                        child: Text(
                                          'Biru',
                                          style: TextStyle(
                                            fontFamily: 'Arial',
                                            fontSize: 17,
                                            color: Colors.black,
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


class AboutHTS extends StatefulWidget {
  const AboutHTS({Key? key}) : super(key: key);

  @override
  State<AboutHTS> createState() => _AboutHTSState();
}

class _AboutHTSState extends State<AboutHTS> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions : [
        IconButton(
          onPressed: () {
            setState(() {
              _isFavorite = !_isFavorite;
            });
          },
          color: Colors.black,
          icon: _isFavorite
              ? const Icon(Icons.favorite_border)
              : const Icon(Icons.favorite),
        ),
      ],
        title: const Text('About HTS'),
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
                      width: 95,
                      height: 110,
                      decoration: BoxDecoration(
                          image: const DecorationImage(image: AssetImage('assets/2.jpg')),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(40, 20, 0, 7),
                            width: 220,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                             child: const Text(
                              'Hardianto Tandi Seno',
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(40, 0, 0, 7),
                            width: 240,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                              child: const Text(
                              'Dengar Musik',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                            ),
                        ),
                        //taruh bintang bintang
                        const Divider(),
                        Row(
                            children: List.generate(
                              5,
                                  (index) => IconButton(
                                onPressed: () {
                                  setState(() {
                                    rate = index + 1;
                                  });
                                },
                                color: Colors.red,
                                icon: index < rate
                                    ? const Icon(Icons.star)
                                    : const Icon(Icons.star_border),
                                  ),
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
                //Deskripsi singkat
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 380,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Mencoba menjadi seorang Front-End Web Developer yang handal',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white),
                          textAlign: TextAlign.justify,
                    ),
                      ),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 20),
                    width: 380,
                    height: 224,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white
                        ),
                          textAlign: TextAlign.justify,
                    ),
                      ),
                )
              ],
            ),

          ],
        ),
      ),
    );}
}
