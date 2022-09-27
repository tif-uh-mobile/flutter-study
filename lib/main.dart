import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201075_Agung/D121201075_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'D121201075_Tugas 1'),
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
        backgroundColor: Colors.orangeAccent,
        leading: const Icon(Icons.task),
        title: Text(widget.title),
      ),body: Center(
      child: Column(
        children: [
          new GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => D121201075ProfileScreen()));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/fp.jpg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(

                color: Colors.orangeAccent,
                width: 5,
              ),
            ),
            child: Center(
              child: Text("Muhammad Agung Sabillah",style: TextStyle(fontSize: 18),),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.orangeAccent,
                width: 5,
              ),
            ),
            child: Center(
              child: Text("Baca webtoon",style: TextStyle(fontSize: 18),),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.orangeAccent,
                width: 5,
              ),
            ),
            child: Center(
              child: Text("Coklat/Putih",style: TextStyle(fontSize: 18),),
            ),
          )
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

