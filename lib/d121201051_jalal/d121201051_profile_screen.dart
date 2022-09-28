import 'package:flutter/material.dart';
import 'package:tif_flutter/more_info/more_info.dart';

class NimProfileScreen extends StatefulWidget {
  const NimProfileScreen({Key? key}) : super(key: key);

  @override
  State<NimProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<NimProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: Container(
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/img/rem.jpg'),
                  radius: 70,
                ),
                margin: const EdgeInsets.only(top: 45),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MoreInfo()));
              },
            ),
            Center(
              child: Container(
                child: const Center(
                  child: Text(
                    "M. Jalal Harits", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(top: 35),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  border: Border.all(width: 5, color: Colors.white)
                ),
              ),
            ),
            Center(
              child: Container(
                child: const Center(
                  child: Text(
                    "Main Game", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(top: 35),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  border: Border.all(width: 5, color: Colors.white)
                ),
              ),
            ),
            Center(
              child: Container(
                child: const Center(
                  child: Text(
                    "Black", 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
                margin: const EdgeInsets.only(top: 35),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  border: Border.all(width: 5, color: Colors.white)
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
