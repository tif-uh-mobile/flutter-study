import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Profile(),
));

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 25.0,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/maxresdefault.jpg'),
                  radius: 70.0,
                ),
              ),


              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                    color: Colors.white
                ),
              ),


              InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  elevation: 5.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.people_alt_rounded,
                      color: Colors.purple,
                    ),
                    title: Text(
                      'Raynaldy Wisely Suchiady',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                    color: Colors.white
                ),
              ),


              InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  elevation: 5.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.directions_walk_rounded,
                      color: Colors.purple,
                    ),
                    title: Text(
                      'Music, Badminton, Games',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),


              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                    color: Colors.white
                ),
              ),


              InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  elevation: 5.0,
                  child: ListTile(
                    leading: Icon(
                      Icons.brush_rounded,
                      color: Colors.purple,
                    ),
                    title: Text(
                      'Purple',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ]
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => More()),
          );
        },
        child: Icon(Icons.more_horiz),
        backgroundColor: Colors.purple,

      ),
    );
  }
}

class More extends StatefulWidget {
  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  final TextEditingController myController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Profile',
            style: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0
      ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/maxresdefault.jpg'),
                  radius: 70.0,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text('Ray',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Colors.black
                        ),
                      ),

                      Divider(
                        height: 10.0,
                        color: Colors.white,
                      ),


                      Text('Music, Badminton, Games',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 17,
                            color: Colors.black
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                Divider(
                  height:10,

                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  elevation: 5.0,
                  child: Row(
                    children: <Widget>[
                      Container(margin:EdgeInsets.all(5),
                          child: Icon(Icons.face_rounded)),
                      Text("saya adalah manusia berkaki dua"),
                    ],
                  ),
                ),

                Divider(
                  height:10,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.abc_rounded),
                          prefixIconColor: Colors.black,
                          labelText: "Deskripsi",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      maxLength: 200,
                      onChanged: (value){
                        setState(() {});
                      },
                      controller: myController,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.more_horiz),
        backgroundColor: Colors.purple,


      ),
    );
  }
}

