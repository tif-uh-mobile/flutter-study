import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201039_Andi-Shirat-Maqbul/D121201039_profile_screen.dart';


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
        backgroundColor: Colors.redAccent,
        leading: const Icon(Icons.task),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
        children: [
          Container(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => D121201039ProfileScreen()));
            },child: Container(
              //margin: const EdgeInsets.only(top: 70),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("lib/assets/andes.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: 400,
            height: 70,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
            ),
            child: Text(
              "Andi Shirat Maqbul",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            width: 400,
            height: 70,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
            ),
            child: Text(
              "D121201039",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, bottom: 40),
            width: 400,
            height: 70,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.red,
                width: 3,
              ),
            ),
            child: Text(
              "Travelling",
              style: TextStyle(fontSize: 20),
            ),
          ),
          NavigateButton(name: "Go to profile", page: D121201039ProfileScreen())
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
