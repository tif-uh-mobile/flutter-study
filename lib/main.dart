import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201064_Mutiah-Chaerunnisa/D121201064_profile_screen.dart';

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
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'D121201064_profile screen'),
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
        backgroundColor: Colors.lightBlue,
        leading: const Icon(Icons.account_circle_rounded),
        title: Text(widget.title),
      ),body: Center(
      child: Column(
        children: [
          new GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (ctx) => D121201064ProfileScreen()));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 50),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/D121201064.jpeg"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 40),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              border: Border.all(

                color: Colors.lightBlue,
                width: 5,
              ),
            ),
            child: Center(
              child: Text("Mutiah Chaerunnisa",style: TextStyle(fontSize: 18),),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              border: Border.all(
                color: Colors.lightBlue,
                width: 5,
              ),
            ),
            child: Center(
              child: Text("Bermain",style: TextStyle(fontSize: 18),),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 14),
            width: 300,
            height: 50,
            decoration:  BoxDecoration(
              border: Border.all(
                color: Colors.lightBlue,
                width: 5,
              ),
            ),
            child: Center(
              child: Text("Biru",style: TextStyle(fontSize: 18),),
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
