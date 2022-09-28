import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201103_Andhika/D121201103_profile_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'D121201103_Profile'),
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
  get children => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: const Icon(Icons.people_alt),
        title: Text(widget.title),
      ),body: Center(
      child: Column(children: [
        const SizedBox(
          height: 40.0,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
                MaterialPageRoute(
                  builder: (ctx) => const D121201103ProfileScreen()));
          },
          child: ClipOval(
            child: Image.asset(
              'assets/D121201103.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              border: Border.all(

                color: Colors.lightBlueAccent,
                width: 5,
              ),
            ),
            child: const Center(
              child: Text('Andhika Rama Kurniawan',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 5,
              ),
            ),
            child: const Center(
              child: Text('Bermain Game',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              border: Border.all(
                color: Colors.lightBlueAccent,
                width: 5,
              ),
            ),
            child: const Center(
              child: Text('Biru dan Putih',
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
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