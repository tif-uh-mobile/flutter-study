import 'package:flutter/material.dart';
import 'package:tif_flutter/nim_rahmat/nim_profile_screen.dart';
import 'package:tif_flutter/D121201070_Addeta/D121201070_profile_screen.dart';

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
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: const [
          NavigateButton(name: 'Nim-Name', page: NimProfileScreen()),
          NavigateButton(name: 'D121201070-Muhammad Addeta Rukmadi', page: D121201070ProfileScreen()),
        ],
      )),
    );
  }
}

class NavigateButton extends StatelessWidget {
  const NavigateButton({Key? key, required this.name, required this.page}) : super(key: key);

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
