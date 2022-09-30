import 'package:flutter/material.dart';

class D121201003ProfileScreen extends StatefulWidget {
  const D121201003ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201003ProfileScreen> createState() => _D121201003ProfileScreenState();
}

class _D121201003ProfileScreenState extends State<D121201003ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201003 Zulfiqry'),
      ),
      body: ListView(
        children: [
          Container(
            height: 550,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child:Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx) => D121201003ProfileScreen2()));
                      },
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          minRadius: 90.0,
                          child: CircleAvatar(
                              radius: 88.0,
                              backgroundImage:
                              AssetImage('assets/images/d121201003.jpg')
                          ),
                        )
                    )
                  ],
                )
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Zulfiqry Saadputra',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Text(
                        'Hobby : Reading, Gaming',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.normal,
                        )
                    )
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                    'Favorite Color : ',
                    style: TextStyle(
                      color: Color.fromARGB(200, 0, 0, 0),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    )
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Text(
                              'Black ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.black,
                              minRadius: 13.0,
                            ),
                          ],
                        )
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Text(
                              'White ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              minRadius: 13.0,
                            ),
                          ],
                        )
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          children: [
                            Text(
                              'Gold ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.amber,
                              minRadius: 13.0,
                            ),
                          ],
                        )
                    ),

                    SizedBox(
                      width: 10,
                    ),
                  ]
                )
              ]
            )

          )
        ],
      )
    );
  }
}

var star_icon = 0;
class D121201003ProfileScreen2 extends StatefulWidget {
const D121201003ProfileScreen2({Key? key}) : super(key: key);

  @override
  State<D121201003ProfileScreen2> createState() => _D121201003ProfileScreen2State();
}

class _D121201003ProfileScreen2State extends State<D121201003ProfileScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About me'),
      ),
      body: ListView(
        children: [
          Container(
            height: 190,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  minRadius: 55.0,
                  child: CircleAvatar(
                      radius: 53.0,
                      backgroundImage:
                      AssetImage('assets/images/d121201003.jpg')
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:45),
                      child: Text(
                        'Zulfiqry Saadputra',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:8),
                      child: Text(
                        'Reading, Gaming',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          5,
                              (index) => IconButton(
                              onPressed: () {
                                setState(() {
                                  star_icon = index + 1;
                                });
                              },
                              color: Colors.blueAccent,
                              icon: index < star_icon
                                  ? const Icon(Icons.star, color: Colors.amber,)
                                  : const Icon(Icons.star_border))),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left:100, right: 100),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About me ',
                    style: TextStyle(
                      color: Color.fromARGB(190, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              height: 300,
              margin: EdgeInsets.only(left:30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              padding: EdgeInsets.fromLTRB(30, 20, 20, 30),
              child: Text(
                'All I know,\n'
                  'Time is a valuable thing...\n'
                    'Watch it fly by as the pendulum swing. Watch it count down to the end of the day.\n'
                    'The clock ticks life away. \n'
                    'In the end,\n'
                    'You kept everything inside and even though I tried, it all fell apart\n'
                    'What it meant to me will eventually be a memory...',
                style: TextStyle(
                  height: 1.24,
                  color: Color.fromARGB(190, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
          ),
        ],
      )
    );
  }
}