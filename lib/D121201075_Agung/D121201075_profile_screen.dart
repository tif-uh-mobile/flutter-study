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
        backgroundColor: Colors.orangeAccent,
        title: Text('D121201075 Agung S Profile Screen'),
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
                    image: AssetImage("assets/fp.jpg"),
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
                        color: Colors.orangeAccent,
                        width: 3,
                      ),
                    ),
                    child: Center(
                      child: Text("Muh Agung S",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ),
                  ),

                Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: 300,
                  height: 50,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.orangeAccent,
                      width: 3,
                    ),
                  ),
                  child: Center(
                    child: Text("Baca Webtoon",style: TextStyle(fontSize: 18),),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.adb_rounded,color: Colors.green,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.gamepad,color: Colors.blue,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.group,color: Colors.orangeAccent,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.important_devices, color: Colors.blue,))),
                    IconButton(
                        onPressed: () {}, icon: (Icon(Icons.hotel_rounded, color: Colors.red,))),
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
              color: Colors.orangeAccent,
              width: 3,
            ),
          ),
          child: Center(
            child: Text("Hanya Mahasiswa Biasa",style: TextStyle(fontSize: 16),),
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
              color: Colors.orangeAccent,
              width: 3,
            ),
          ),
          child: Text("Jadilah seperti air. Walaupun tidak mewah tapi sangat berarti bagi seluruh kehidupan :)",style: TextStyle(fontSize: 16),),
          ),
      ],
    )
    );
  }
}
