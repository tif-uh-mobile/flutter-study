import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201099_Rifyal//D121201099_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Flutter'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500
        ),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Container(

        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/latar.jpg'),
            fit: BoxFit.cover,
            opacity:  80,
          ),
        ),
        child: Center(
          child: Container(
            width: 300,
            height: 600,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5.0, // has the effect of softening the shadow
                  spreadRadius: 5.0, // has the effect of extending the shadow
                  offset: Offset(
                    20, // horizontal, move right 10
                    10, // vertical, move down 10
                  ),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children:[

                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 25),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NimProfileScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    child: const CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.green,
                      child: CircleAvatar(
                        radius: 96,
                        backgroundImage: AssetImage('asset/propics.jpg'),
                      ),
                    ),
                  ),
                ),

                const Text(
                  'NAME',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 14),
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: 250,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 3,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'RIFYAL MUHAMMAD IMSAN',
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),

                const Text(
                  'HOBBY',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 14),
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: 250,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 3,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'JOGGING, GAMING, DRAWING',
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),

                const Text(
                  'FAV COLOR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                  ),
                ),

                Container(
                  padding: const EdgeInsets.only(left: 14),
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: 250,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 3,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                    'GREEN, BROWN',
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigateButton extends StatelessWidget {

  const NavigateButton({Key? key, required this.name, required  this.page}) : super(key: key);

  final Widget page;
  final String name;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      child: Text(name),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}

