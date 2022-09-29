import 'package:flutter/material.dart';
import 'package:flutter_learn_basics/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            GestureDetector(
              onTap: () {
                debugPrint("image is clicked");
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Page2();
                    },
                  ),
                );
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage("images/random.jpg"),
                radius: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              color: const Color.fromARGB(255, 118, 193, 255),
              width: 300,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text(
                  "Chindy Christie Davina",
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 118, 193, 255),
              width: 300,
              padding: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text(
                  "Hobby: reading",
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(10.0),
              child: const Center(
                child: Text(
                  "Fav color: blue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
