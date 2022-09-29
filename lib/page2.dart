import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(children: [
                Image.asset(
                  "images/random.jpg",
                  width: 180,
                ),
                Column(
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 118, 193, 255),
                      // width: 250,
                      margin: const EdgeInsets.only(left: 5.0, bottom: 2.0),
                      child: const Text(
                        "Chindy Christie",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Container(
                      // color: const Color.fromARGB(255, 118, 193, 255),
                      // width: 200,
                      margin: const EdgeInsets.only(bottom: 2.0),
                      padding: const EdgeInsets.all(1.0),
                      child: const Text(
                        "Hobby: reading",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.face),
                        Icon(Icons.hail),
                        Icon(Icons.face_retouching_natural),
                      ],
                    ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "LoremIpsum sed do eiusmod tempor dolorealiqua.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
