import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/D121201043_Alexander Gosal/profile_extend.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 115,
          width: 115,
          child : CircleAvatar(
            backgroundImage: AssetImage("images/pasFoto.jpg"),
          )
        ),
        Card(
            color: Colors.white,
            margin:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal[900],
              ),
              title: Text(
                "Alexander Gosal",
                style:
                TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
              ),
            )
        ),
        Card(
            color: Colors.white,
            margin:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.local_activity,
                color: Colors.teal[900],
              ),
              title: Text(
                'Chess',
                style:
                TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
              ),
            )
        ),
        Card(
            color: Colors.white,
            margin:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.color_lens,
                color: Colors.teal[900],
              ),
              title: Text(
                "Red",
                style:
                TextStyle(fontFamily: 'BalooBhai', fontSize: 20.0),
              ),
            )
        ),
        ElevatedButton(
          child: Text("Continue"),
          style: ElevatedButton.styleFrom(primary: Colors.redAccent),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ]
    );
  }
}