import 'package:flutter/material.dart';

var _icon = 0;

class NimProfileScreen extends StatefulWidget {
  const NimProfileScreen({Key? key}) : super(key: key);

  @override
  State<NimProfileScreen> createState() => _NimProfileScreenState();
}

class _NimProfileScreenState extends State<NimProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/latar.jpg'),
            fit: BoxFit.cover,
            opacity: 80,
          ),
        ),
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(width: 4, color: Colors.lightGreen),
                  ),
                  child: Image.asset(
                    'asset/propics.jpg',
                    width: 125,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 5, bottom: 10, top: 16),
                      width: 220,
                      height: 40,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 3,
                            color: Colors.lightGreen,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        'RIFYAL MUHAMMAD IMSAN',
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 5,
                      ),
                      width: 220,
                      height: 40,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 3,
                            color: Colors.lightGreen,
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Text(
                        'JOGGING, GAMING, DRAWING',
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          5,
                          (index) => IconButton(
                              onPressed: () {
                                setState(() {
                                  _icon = index + 1;
                                });
                              },
                              color: Colors.lightGreen,
                              icon: index < _icon
                                  ? const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    )
                                  : const Icon(Icons.star_border))),
                    )
                  ],
                ),
              ],
            ),
            Container(
              width: 380,
              height: 50,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 3,
                    color: Colors.lightGreen,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Text(
                'Lorem Ipsum',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 18),
              ),
            ),
            Container(
              width: 380,
              height: 400,
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(left: 15, right: 15),
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 3,
                    color: Colors.lightGreen,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: const Text(
                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.normal,
                    fontSize: 15),
              ),
            )
          ],
        )),
      ),
    );
  }
}
