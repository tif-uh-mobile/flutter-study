import 'package:flutter/material.dart';

class D121201074ProfileScreen extends StatefulWidget {
  const D121201074ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201074ProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201074ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201074_Leevio W.P_ProfileScreen'),
      ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/pic_profile.jpg"),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 14),
                      width: 200,
                      height: 30,
                      decoration:  BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 3,
                        ),
                      ),
                      child: Center(
                        child: Text("Leevio W.P.",style: TextStyle(fontSize: 18),),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: 200,
                      height: 30,
                      decoration:  BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 3,
                        ),
                      ),
                      child: Center(
                        child: Text("Main",style: TextStyle(fontSize: 18),),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.add_box ,color: Colors.blue,))),
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.gps_fixed,color: Colors.blue,))),
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.play_arrow,color: Colors.blue,))),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
              width: double.infinity,
              height: 30,
              decoration:  BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
              child: Center(
                child: Text("Apa yak?",style: TextStyle(fontSize: 18),),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 310,
              decoration:  BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 3,
                ),
              ),
              child: Text("Text panjang",style: TextStyle(fontSize: 18),),
            ),
          ],
        )
    );
  }
}