import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile'),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 40.0, left: 30.0, right: 10.0),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        child: (CircleAvatar(
                          radius: 75,
                          backgroundImage: AssetImage('image/chanyang.png'),
                        )),
                      )
                    ],
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(left: 200, top: 20),
                              child: Center(
                                child: Text(
                                  'Amiqatun Nasyati Yusri',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              width: 300,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 2, color: Colors.blue),
                                borderRadius: BorderRadius.circular(5),
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 200, top: 20),
                            child: Center(
                              child: Text(
                                'Badminton & Fotografi',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          Stack(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, right: 5, left: 265),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.camera_alt_sharp,
                                          color: Colors.red,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 5, right: 5),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.gamepad_sharp,
                                          color: Colors.black,
                                          size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 5, right: 5),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.music_note_sharp,
                                          color: Colors.green,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 5, right: 5),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.toys_sharp,
                                          color: Colors.orange,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 5, right: 5),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.menu_book_sharp,
                                          color: Colors.blue,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15, left: 5, right: 5),
                                    child: Row(
                                      children: const <Widget>[
                                        Icon(
                                          Icons.laptop_mac_sharp,
                                          color: Colors.black,
                                          size: 30,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 45),
                        width: 510,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Menghindari menjadi beban negara',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Terima kasih telah memberi projek sederhana ini kepada saya. Karena projek ini, saya belajar dan memahami bahasa dasar Flutter.',
                          style: TextStyle(fontSize: 20),
                        ),
                        margin: EdgeInsets.only(top: 35),
                        padding: EdgeInsets.all(10),
                        width: 510,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 2, color: Colors.blue),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
