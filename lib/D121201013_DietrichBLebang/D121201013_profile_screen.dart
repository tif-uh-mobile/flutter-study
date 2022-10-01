import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201013_DietrichBLebang/D121201013_profile_detail.dart';

class D121201013ProfileScreen extends StatefulWidget {
  const D121201013ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201013ProfileScreen> createState() => _D121201013ProfileScreenState();
}

class _D121201013ProfileScreenState extends State<D121201013ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201013 DietrichBLebang Profile Screen'),
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
                        Navigator.push(context, MaterialPageRoute(builder: (ctx) => const D121201013DetailScreen()));
                      },
                      child: const CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(
                          'https://sikola.unhas.ac.id/app/upload/users/4/43046/43046_602f1647864ae_20200818_130131.jpg?rand=633843f1df996',
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
                            'Dietrich Bite Lebang',
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
                            'Game',
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
                            'Merah, Hitam',
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