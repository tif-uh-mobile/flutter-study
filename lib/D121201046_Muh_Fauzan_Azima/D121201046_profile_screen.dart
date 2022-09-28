import 'package:flutter/material.dart';


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
        title: Text('Nim Name Profile Screen'),
      ),
      body: Container(
        child: Center(
          child: Stack(
            alignment: const Alignment(0.6, 0.6),
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/img2.png'),
                radius: 100,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.black45,
                ),
                child: const Text(
                  'Muh. Fauzan Azima\nD121201046',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      )

    );
  }
}
