import 'package:flutter/material.dart';
import 'package:tif_flutter/D121171507_IkhsanJihadi/nim_profile_screen.dart';

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
      home: const MyHomePage(title: 'Profile Student'),
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
        children: [
          Container(
            margin: EdgeInsets.only(top: 32),
            width: 190.0,
            height: 190.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/Sanss.png'))),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text(
                "Ikhsan Jihadi",
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
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text(
                "Ngoding",
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
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text(
                "BLUE",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          NavigateButton(
              name: 'D121171507-Ikhsan Jihadi', page: NimProfileScreen())
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
      style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent),
      child: Text(name),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}
