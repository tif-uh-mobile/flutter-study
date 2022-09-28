import 'package:flutter/material.dart';

class NimDetailScreen extends StatefulWidget {
  const NimDetailScreen({Key? key}) : super(key: key);

  @override
  State<NimDetailScreen> createState() => _NimDetailScreenState();
}

class _NimDetailScreenState extends State<NimDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D121201061 M. Noor Ravi Deevan Detail Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  'https://avatars.githubusercontent.com/u/42968441?v=4',
                  width: 180.0,
                ),
                Column(
                  children: [
                    Container(
                      width: 160.0,
                      margin: const EdgeInsets.only(
                        top: 20.0,
                      ),
                      padding: const EdgeInsets.all(18.0),
                      decoration: const BoxDecoration(
                        color: Colors.blue
                      ),
                      child: const Text(
                        'M. Noor Ravi Deevan',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        ),
                        textAlign: TextAlign.center,
                        textScaleFactor: 1.0,
                      ),
                    ),
                    Container(
                      width: 160.0,
                      margin: const EdgeInsets.only(
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      padding: const EdgeInsets.all(18.0),
                      decoration: const BoxDecoration(
                        color: Colors.blue
                      ),
                      child: const Text(
                        'Coding, Boxing, Archery',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(children: const [
                      Icon(
                        Icons.add
                      ),
                      Icon(
                        Icons.mic,
                        color: Colors.lightGreen,
                      ),
                      Icon(
                        Icons.spa,
                        color: Colors.yellow,
                      ),
                      Icon(
                        Icons.cloud,
                        color: Colors.lightBlue,
                      ),
                      Icon(
                        Icons.add
                      ),
                    ])
                  ],
                )
              ],
            ),
            Container(
              width: 320.0,
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              padding: const EdgeInsets.all(18.0),
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
              child: const Text(
                'This is some text',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 320.0,
              margin: const EdgeInsets.only(
                top: 20.0,
              ),
              padding: const EdgeInsets.all(18.0),
              decoration: const BoxDecoration(
                color: Colors.blue
              ),
              child: const Text(
                'Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet Lorem ipsum doler sir amet ',
                style: TextStyle(
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
                maxLines: 10,
                overflow: TextOverflow.visible,
              ),
            ),
          ]
        )
      ),
    );
  }
}
