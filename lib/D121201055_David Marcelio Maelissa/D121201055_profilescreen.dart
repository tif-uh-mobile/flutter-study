import 'package:flutter/material.dart';

void main() {
  runApp(const Profil());
}

class Profil extends StatelessWidget {
  const Profil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profile(title: 'Tentang Saya'),
    );
  }
}

class Profile extends StatefulWidget {
  const Profile({super.key, required this.title});

  final String title;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(


          title: Text(widget.title),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 35, left: 10),
                  width: 150,
                  height: 160,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/petrik.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.only(top: 10, left: 15),
                        width: 210.0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('David Marcelio', style: TextStyle(fontSize:30, fontWeight: FontWeight.bold)),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan)
                        )
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        margin: EdgeInsets.only(top: 15, left: 15),
                        width: 210.0,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Self Healing & Gaming', style: TextStyle(fontSize:18),),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan)
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 80),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: (Icon(Icons.browse_gallery,color: Colors.black,size: 35,))),
                          IconButton(
                              onPressed: () {}, icon: (Icon(Icons.computer_outlined,color: Colors.black, size: 35,))),
                          IconButton(
                              onPressed: () {}, icon: (Icon(Icons.phone_outlined,color: Colors.black, size: 35,))),
                          IconButton(
                              onPressed: () {}, icon: (Icon(Icons.camera_alt_rounded, color: Colors.black, size: 35,))),
                        ],
                      ),
                    ),
                  ],
                )
            ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 1, left: 10),
                  width: 375.0,
                  height: 30.0,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Tersesatlah dijalan yang benar', style: TextStyle(fontSize:18)),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan)
                  )
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.only(top: 10, left: 10),
                  width: 375.0,
                  height: 300.0,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Nama saya David Marcelio Maelissa, biasa dipanggil David atau Dave, saya berasal dari kabupaten Banggai provinsi Sulawesi Tengah, saya SD dan SMP di daerah saya, kemudian melanjutkan pendidikan SMA di Palu, dan kemudian melanjutkan pendidikan lagi di Universitas Hasanuddin di Makassar.', style: TextStyle(fontSize:18)),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan)
                  )
              ),
            )

          ],
        )
    );
  }
}
