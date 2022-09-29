import 'package:flutter/material.dart';
import 'package:tif_flutter/d121201030_ipwk/d121201030_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile Page'),
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
        backgroundColor: Colors.blueGrey,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (ctx) => const D121201030ProfileScreen()));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 50, bottom: 30),
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/assets/foto.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 3,
              ),
            ),
            child: const Center(
              child: Text(
                "I Putu Wahyu Kusuma",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 3,
              ),
            ),
            child: const Center(
              child: Text(
                "Main Game",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 3,
              ),
            ),
            child: const Center(
              child: Text(
                "Bluish-Grey",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class NavigateButton extends StatelessWidget {
  const NavigateButton({Key? key, required this.name, required this.page})
      : super(key: key);

  final Widget page;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(name),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}
