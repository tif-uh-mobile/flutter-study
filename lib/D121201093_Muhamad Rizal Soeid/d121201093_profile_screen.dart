import 'package:flutter/material.dart';


class NimProfileScreen extends StatefulWidget {
  const NimProfileScreen({super.key, required this.title});

  final String title;

  @override
  State<NimProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<NimProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201093_Muhamad Rizal Soeid profile screen'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(12),
                child: Image.asset(
                  'assets/images/images.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 50,
                    margin: EdgeInsets.only(top: 12),
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade200, width: 2)
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('M Rizal Soeid', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade200, width: 2)
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Bermain Game', style: TextStyle(
                        fontSize: 18,
                      ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white)
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('😎😂😎', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(top: 20),
            width: 375,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade200, width: 2)
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('Aku bukan Kamu', style: TextStyle(
                fontSize: 18,
              ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 20),
            width: 375,
            height: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue.shade200, width: 2 )
            ),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text('\'Cause sometimes I look in her eyes And that\'s where I find a glimpse of us And I try to fall for her touch But I\'m thinking of the way it was Said I\'m fine and said I moved on I\'m only here passing time in her arms Hoping I\'ll find A glimpse of us', style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}