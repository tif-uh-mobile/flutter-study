import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201061_MNoorRaviDeevan/D121201061_profile_detail.dart';

class NimProfileScreen extends StatefulWidget {
  const NimProfileScreen({Key? key}) : super(key: key);

  @override
  State<NimProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<NimProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201061 M. Noor Ravi Deevan Profile Screen'),
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
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const NimDetailScreen()));
                  },
                  child: const CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/42968441?v=4',
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
                        color: Colors.blue
                      ),
                      child: const Text(
                        'M. Noor Ravi Deevan',
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
                        color: Colors.blue
                      ),
                      child: const Text(
                        'Coding, Boxing, Archery',
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
                        color: Colors.blue
                      ),
                      child: const Text(
                        'Sky Blue, Black, White',
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
