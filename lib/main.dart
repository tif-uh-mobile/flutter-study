import 'package:flutter/material.dart';
import 'package:flutter-study/D121201093_Muhamad Rizal Soeid/d121201093_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'
      ),
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
                  margin: const EdgeInsets.all(30),
                  child: Material(
                      color: Colors.blue,
                      elevation: 8,
                      shape: CircleBorder(),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=> NimProfileScreen(title: 'Flutter Demo')));
                        },
                        child: Ink.image(
                          image: AssetImage('assets/images/images.png'),
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      )
                  )
              ),
              Container(//
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(left: 20),
                height:  50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue.shade200,
                    width: 2,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Muhammad Rizal Soeid',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),)
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                margin: const EdgeInsets.only(top: 30),
                height:  50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue.shade200,
                    width: 2,
                  ),
                ),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Bermain Game',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),)
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                padding: const EdgeInsets.only(left: 20),
                height:  50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue.shade200,
                    width: 2,
                  ),
                ),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Biru',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                    )
                ),
              ),
            ]
        ),
      ),
    );
  }
}
