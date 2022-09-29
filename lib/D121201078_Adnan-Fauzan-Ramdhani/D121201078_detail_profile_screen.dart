import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailMyProfile extends StatefulWidget {
  const DetailMyProfile({super.key, required this.title});
  final String title;

  @override
  State<DetailMyProfile> createState() => _DetailMyProfileState();
}

class _DetailMyProfileState extends State<DetailMyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget> [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(bottom: 30),
                child: Image.asset('assets/patrick.jpg', fit: BoxFit.cover)
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5, top: 10),
                    padding: EdgeInsets.all(10),
                    width: 230,
                    child: Text(
                      'Adnan Fauzan',style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2)
                    ),
                  ),
                  Container(
                    width: 230,
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Bermain Game', style: TextStyle(
                      fontSize: 18)
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2)
                    ),
                  ),
                  Container(
                    width: 230,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 0, bottom: 5),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.umbrella,color:
                        Colors.blueAccent,))),
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.card_travel,color:
                        Colors.blueGrey,))),
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.handyman,color:
                        Colors.orangeAccent,))),
                        IconButton(
                            onPressed: () {}, icon: (Icon(Icons.shield_moon, color:
                        Colors.redAccent,))),
                      ],
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text('Just a normal person'),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange, width: 2)
          ),
        ),
        Container(
          height: 200,
          width: 350,
          margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text('Waiting someone who comeback in this week',
              maxLines: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 2)
            ),
          ),
        ],
      ),
    );
  }
}