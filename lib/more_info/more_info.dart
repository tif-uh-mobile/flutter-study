import 'package:flutter/material.dart';

class MoreInfo extends StatefulWidget {
  const MoreInfo({Key? key}) : super(key: key);

  @override
  State<MoreInfo> createState() => _MoreInfoScreenState();
}

class _MoreInfoScreenState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5,
                    ),
                    image: const DecorationImage(
                      image: AssetImage("assets/img/rem.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 40,
                      child: const Center(
                        child: Text(
                          "M. Jalal Harits", 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(border: Border.all(width: 5)),
                      margin: const EdgeInsets.only(left: 10, ),
                    ),
                    Container(
                      width: 200,
                      height: 40,
                      child: const Center(
                        child: Text(
                          "Main Game", 
                          textAlign: TextAlign.center, 
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(border: Border.all(width: 5)),
                      margin: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.tag_faces_rounded, size: 35, color: Colors.lightBlue),
                        Icon(Icons.tag_faces_rounded, size: 35, color: Colors.lightBlue),
                        Icon(Icons.tag_faces_rounded, size: 35, color: Colors.lightBlue),
                        Icon(Icons.tag_faces_rounded, size: 35, color: Colors.lightBlue),
                        Icon(Icons.tag_faces_rounded, size: 35, color: Colors.lightBlue),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  child: const Text(
                    "30 September",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black)
                  ),
                  width: double.infinity,
                  height: 40,
                  padding: const EdgeInsets.only(top: 5, left: 5),
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                ),
                Container(
                  child: const Text(
                    "Gali Lubang",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: Colors.black)
                  ),
                  width: double.infinity,
                  height: 300,
                  padding: const EdgeInsets.only(top: 2, left: 5),
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                ),
              ],
            ),
          ],
        ) 
      ),
    );
  }
}