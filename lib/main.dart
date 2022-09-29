import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201009_ichsan/D121201009_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyProfile',
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        dividerColor: Colors.black,
        primarySwatch: Colors.blueGrey,
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
          children: const[
            SizedBox(height: 25),
            Text('Welcome to My Profile', style: TextStyle(
                color: Colors.black, fontSize: 30),),
            SizedBox(height: 30),
            NavigateButton(name: 'D121201009 - A. Ichsan Mudatsir', page: D121201009ProfileScreen())
          ],
        ),
      ),
    );
  }
}

class NavigateButton extends StatelessWidget {
  const NavigateButton({Key? key, required this.name, required this.page}) : super(key: key);

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


