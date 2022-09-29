import 'package:flutter/material.dart';

class D121201075ProfileScreen extends StatefulWidget {
  const D121201075ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201075ProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201075ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('D121201056 Shekinah Profile Screen'),
      ),body: Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 120,
              height: 120,
              decoration: BoxDecoration(

                  image: DecorationImage(
                    image: NetworkImage("https://avatars.githubusercontent.com/u/90036302?v=4"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            Column(
              children: [
                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    width: 300,
                    height: 50,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.pinkAccent,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Text("Shekinah Queeny",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),

                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 300,
                  height: 50,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.pinkAccent,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text("Mendengarkan lagu",style: TextStyle(fontSize: 18),),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.ac_unit,color: Colors.blue,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.piano,color: Colors.black,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.music_note,color: Colors.orangeAccent,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.school, color: Colors.brown,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.emoji_emotions_sharp, color: Colors.orangeAccent,))),
                  ],
                )
              ],
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
          width: double.infinity,
          height: 50,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.pinkAccent,
              width: 3,
            ),
          ),
          child: Center(
            child: Text("Halo nama saya Shekinah",style: TextStyle(fontSize: 16),),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 350,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.pinkAccent,
              width: 3,
            ),
          ),
          child: Text("Ini adalah tugas flutter pertama saya <3",style: TextStyle(fontSize: 16),),
          ),
      ],
    )
    );
  }
}
