import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';
import 'package:google_fonts/google_fonts.dart';

class D121201006ProfileScreen extends StatefulWidget {
  const D121201006ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201006ProfileScreen> createState() => _D121201006ProfileScreenState();
}

class _D121201006ProfileScreenState extends State<D121201006ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
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
                        'D121201006 Nur Islamiah Rifai')));
          },
        ),
        title: Text('Nur Islamiah Rifai', style: GoogleFonts.poppins(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
        ),
        flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(10),
            )
        ),
      ),
      body: Stack(
        children: [
          Column(children: [
            Expanded(flex: 5, child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.grey]),
                ),
                child: Column(children: [
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                    },
                    child: ClipOval(
                        child: Image.asset('assets/foto.jpeg', width: 100,height: 100,fit: BoxFit.cover,)
                    ),
                  ),
                  const SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xFF5843BE),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: const Center(
                        child: Text('Name: Nur Islamiah Rifai', style: TextStyle(
                            color: Colors.white, fontSize: 15),
                        ),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xFF5843BE),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: const Center(
                        child: Text('Hobby: Watching Movie', style: TextStyle(
                            color: Colors.white, fontSize: 15),
                        ),),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => const ProfilePage()));
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xFF5843BE),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: const Center(
                        child: Text('Favorite Color: Purple', style: TextStyle(
                            color: Colors.white, fontSize: 15),
                        ),),
                    ),
                  ),
                ])
            ),
            )
          ],)
        ],
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
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
                    builder: (ctx) => const D121201006ProfileScreen()));
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
        padding: const EdgeInsets.all(10),
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
                        image: AssetImage('assets/foto.jpeg')),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Nur Islamiah Rifai',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Hasanuddin University',
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                        children: List.generate(3,
                                (index) => IconButton(
                              onPressed: () {},
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0.0),
                              icon: const Icon(Icons.insert_emoticon),
                              iconSize: 20,
                            )))
                  ],
                ),
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 10),
                child: Text(
                  'Informatics Engineering Student',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                  ),
                )),
            SizedBox(
                child: Text(
                  'Saya merupakan mahasiswa semester lima yang gemar melakukan aktivitas sosial dan mengikuti beberapa organisasi. '
                      'Saya senang membangun relasi dengan orang baru yang memberikan banyak pengalaman bagi saya.',
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}