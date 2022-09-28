import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201068_Rischa/D121201068_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile Home Page'),
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
                margin: const EdgeInsets.only(top: 70),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/ch.jpg"),
                      fit: BoxFit.fill,
                    )),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                width: 400,
                height: 70,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(73, 211, 94, 1),
                    width: 3,
                  ),
                ),
                child: Text(
                  "Nama : Rischa Nurul Hidayati",
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
                    color: Color.fromRGBO(73, 211, 94, 1),
                    width: 3,
                  ),
                ),
                child: Text(
                  "Hobi : Berimajinasi",
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
                    color: Color.fromRGBO(73, 211, 94, 1),
                    width: 3,
                  ),
                ),
                child: Text(
                  "Warna Favorit : Hijau",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              NavigateButton(
                  name: "D121201081-Rischa Nurul Hidayati",
                  page: D121201068ProfileScreen())
            ],
          ),
        ));
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
