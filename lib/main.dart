import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201025_dylan/d121201025_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'My Profile'),
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
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        // children: const [
        //  NavigateButton(
        //      name: 'D121201025-Gabriel Dylan', page: NimProfileScreen())
        children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            width: 190.0,
            height: 190.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Untitled31.png'))),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                "Gabriel Dylan Valentino",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12),
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                "Membaca",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 20),
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.grey),
            child: Center(
              child: Text(
                "Abu-abu",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          NavigateButton(
              name: 'D121201025-Gabriel Dylan', page: NimProfileScreen())
        ],
      )),
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
