import 'package:flutter/material.dart';

class D121201054ProfileScreen extends StatefulWidget {
  const D121201054ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201054ProfileScreen> createState() => _D121201054ProfileScreenState();
}

class _D121201054ProfileScreenState extends State<D121201054ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('D121201054 Paula Carolyn Chudori Profile Screen'),
        backgroundColor: Colors.pink.shade300,
      ),
      body: Stack(
        children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Profile'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'SourceSansPro',
                    color: Colors.pink.shade400,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 20.0,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Profile2()));
                  },
                  child: const CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage('images/profile_pict.jpg'),
                ),
                ),
                const SizedBox(
                  height: 30.0,
                  width: 180,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                      borderRadius: BorderRadius.circular(10),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.person_outlined,
                      color: Colors.white,
                    ),
                      title: Text(
                          'Paula Carolyn Chudori',
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                      ),
                      ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.menu_book_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Reading',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const ListTile(
                    leading: Icon(
                      Icons.color_lens_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'White',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}


class Profile2 extends StatefulWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  State<Profile2> createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink.shade300,
        title: const Text ('Profile'),
          centerTitle: true
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      height: 160,
                  width: 160,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('images/profile_pict.jpg')),
                  ),
                ),
                    ],
                ),
                    Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              height: 40,
                          width: 250,
                          padding: const EdgeInsets.all(5.0),
                          margin: const EdgeInsets.only(left: 170, top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.pink.shade300, width: 2.0,)
                          ),
                          child:
                            const Text(
                              'Paula Carolyn Chudori',
                              style: TextStyle(
                                fontFamily: 'SourceSansPro',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                          ),
                              textAlign: TextAlign.left,
                        ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 170, top: 10),
                          padding: const EdgeInsets.all(5.0),
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.pink.shade300, width: 2.0,)
                          ),
                          child:
                          const Text(
                            'Reading',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 170, top: 10),
                          padding: const EdgeInsets.all(5.0),
                          width: 250,
                          child:
                            const Text(
                              '⭐⭐⭐⭐⭐',
                                  style: TextStyle(
                                    fontSize: 20,
                                    letterSpacing: 4.0,
                                  ),
                                  textAlign: TextAlign.left,
                        ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5.0),
                          height: 35,
                          width: 400,
                          margin: const EdgeInsets.only(top: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.pink.shade300, width: 2.0,)
                          ),
                          child:
                          const Text(
                            'Description Box',
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 16,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10.0),
                          height: 250,
                          width: 400,
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.pink.shade300, width: 2.0,)
                          ),
                          child:
                          Text(
                            "Hello, I'm Paula Carolyn Chudori, a 5th semester student of Informatics Engineering, Hasanuddin University and i'm currently learning how to use flutter.",
                            style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade700,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                  ],
                ),
        ],
                ),
              ],
            ),
        ],
    ),
      ),
      );

  }
}
