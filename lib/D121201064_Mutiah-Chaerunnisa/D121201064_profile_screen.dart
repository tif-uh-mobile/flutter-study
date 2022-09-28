import 'package:flutter/material.dart';

class D121201064ProfileScreen extends StatefulWidget {
  const D121201064ProfileScreen({Key? key}) : super(key: key);
  @override
  State<D121201064ProfileScreen>createState()=>_NimProfileScreenState();
}

class _NimProfileScreenState extends State<D121201064ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('D121201064 Mutiah Chaerunnisa'),
        ),body: Column(
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: 150,
              height: 150,
              decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage("assets/D121201064.jpeg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  width: 350,
                  height: 50,
                  decoration:  BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text("Mutiah Chaerunnisa",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 350,
                  height: 50,
                  decoration:  BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text("Bermain",style: TextStyle(fontSize: 18),),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.local_restaurant,color: Colors.orange,size: 30))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.gamepad,color: Colors.red,size: 30,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.local_hotel_rounded,color: Colors.green,size: 30,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.rotate_left,color: Colors.blueGrey,size: 30,))),
                  ],
                )
              ],
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
          width: double.infinity,
          height: 50,
          decoration:  BoxDecoration(
            border: Border.all(
              color: Colors.lightBlue,
              width: 3,
            ),
          ),
          child: Text("npc",style: TextStyle(fontSize: 20),),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14,left: 15,right: 15),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 350,
          decoration:  BoxDecoration(
            border: Border.all(
              color: Colors.lightBlue,
              width: 3,
            ),
          ),
          child: Text("Setidaknya masih bernafas...",style: TextStyle(fontSize: 25),),
        ),
      ],
    )
    );
  }
}