import 'package:d121201055_tugasmobile/D121201055_David%20Marcelio%20Maelissa/D121201055_profilescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Beranda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 50, bottom: 25),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/petrik.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context)=> const Profil()));
                    }
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.only(top: 20, bottom: 10),
              width: 275.0,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('David Marcelio Maelissa', style: TextStyle(fontSize:20),),
              ),
                decoration: BoxDecoration(
                border: Border.all(color: Colors.cyan)
              )

            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 20, bottom: 10),
                width: 275.0,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Self healing', style: TextStyle(fontSize:20),),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan)
                )
            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(top: 20, bottom: 10),
                width: 275.0,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Hitam', style: TextStyle(fontSize:20),),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.cyan)
                )
            ),
            ]
        )
      )
    );
  }
}
