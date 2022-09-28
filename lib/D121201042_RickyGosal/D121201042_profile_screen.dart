
import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';

var star_icon = 0;
class D121201042ProfileScreen extends StatefulWidget {
  const D121201042ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201042ProfileScreen> createState() =>
      _D121201042ProfileScreenState();
}

class _D121201042ProfileScreenState extends State<D121201042ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigoAccent,
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
                          'D121201042 Ricky Gosal Profile Screen')));
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
            'D121201042 Ricky Gosal'),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/TechnologyAndHand.jpeg'),
                        fit: BoxFit.fill
                    )
                    ),
                    width: double.infinity,
                    child: Column(children: [
                      const SizedBox(
                        height: 25.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (ctx) => const AboutMe()));
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.orange,
                          backgroundImage: AssetImage('assets/profile-circle.png'),
                          radius: 85,
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.lightBlue)
                        ),
                        child: const Center(
                          child: Text(
                            'Ricky Gosal',
                            style:
                            TextStyle(color: Colors.cyanAccent, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.lightBlue)
                        ),
                        child: const Center(
                          child: Text(
                            'Bermain Game',
                            style:
                            TextStyle(color: Colors.cyanAccent, fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.lightBlue)
                        ),
                        child: const Center(
                          child: Text(
                            'Cyan',
                            style:
                            TextStyle(color: Colors.cyanAccent, fontSize: 18),
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

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMe();
}

class _AboutMe extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text ('About Me'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => const D121201042ProfileScreen()));
          },
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              9.0,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/Information.jpeg'),
            fit: BoxFit.fill
        )
        ),
        padding: const EdgeInsets.all(9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/profile.jpeg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Ricky Gosal',
                        style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        'Bermain Game',
                        style: TextStyle(color: Colors.cyanAccent, fontSize: 18),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          5,
                              (index) => IconButton(
                              onPressed: () {
                                setState(() {
                                  star_icon = index + 1;
                                });
                              },
                              color: Colors.blueAccent,
                              icon: index < star_icon
                                  ? const Icon(Icons.star, color: Colors.amber,)
                                  : const Icon(Icons.star_border))),
                    )
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10, bottom: 25),
                child: Text(
                  'Saya adalah Mahasiswa dan Pemula dalam segala hal',
                    style: TextStyle(color: Colors.cyanAccent, fontWeight: FontWeight.bold)
                )),
            Container(
                child: Text(
                  'Saya datang ke Informatika untuk dapat menciptakan teknologi yang dapat mengerjakan pekerjaan manusia secara otomatis. '
                  'Saya masih kurang dalam banyak hal, Terutama dalam sisi kreativitas, Saya berharap diakhir pembelajaran saya di UNHAS ,'
                      ' Saya dapat menentukan pilihan dalam hidupku dan mencari pekerjaan yang cocok dengan saya. ',
                  style: TextStyle(color: Colors.cyanAccent),
                  textAlign: TextAlign.justify,
                ))
          ],
        ),
      ),
    );
  }
}