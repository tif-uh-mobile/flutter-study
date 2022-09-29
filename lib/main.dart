import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201072_Muhammad Ilham Nur Furqan/D121201072_profile_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          NavigateButton(name: 'D121201072_Muhammad Ilham Nur Furqan', page: D121201072ProfileScreen())
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
    //return ElevatedButton (
    return ElevatedButton(
      child: Text(name),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}