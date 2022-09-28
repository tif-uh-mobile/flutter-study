import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201066_ThesalonikaAprilia/D121201066_profile_detail.dart';

class D121201066ProfileScreen extends StatefulWidget {
  const D121201066ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201066ProfileScreen> createState() => _D121201066ProfileScreenState();
}

class _D121201066ProfileScreenState extends State<D121201066ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201066 Thesalonika Aprilia Profile Screen'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTapDown: (_) {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx) => const D121201066DetailScreen()));
                      },
                      child: const CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(
                          'https://sikola.unhas.ac.id/app/upload/users/4/45341/big_45341_5f5a27bb12793_Foto-3x4-crop.jpg?rand=633445ed36d4c',
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(18.0),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent
                          ),
                          child: const Text(
                            'Thesalonika Aprilia',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(18.0),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent
                          ),
                          child: const Text(
                            'Olahraga',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(18.0),
                          decoration: const BoxDecoration(
                              color: Colors.blueAccent
                          ),
                          child: const Text(
                            'Hitam dan Biru',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]
          )
      ),
    );
  }
}