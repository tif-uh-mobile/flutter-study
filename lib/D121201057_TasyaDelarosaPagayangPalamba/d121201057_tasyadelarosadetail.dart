import 'package:flutter/material.dart';
import 'package:tif_flutter/extentions.dart';

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
        title: const Text('D121201057 Tasya Delarosa'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSdVl3FmOddawXtIJ2uR204rqVdoILPfDyaupsGoSfDxMdXYVDh_22ChHT3YoPUOY-vpI-vGfE=w1920-h392',
                      ),
                      minRadius: 60,
                      maxRadius: 90,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(18.0),
                          decoration: BoxDecoration(
                            color: '#DE847B'.toColor(),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text(
                            'Tasya Delarosa',
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
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: '#DE847B'.toColor(),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text(
                            'Traveling, Culinary',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(children: [
                          Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.teal,
                          ),
                          Icon(
                            Icons.account_box_outlined,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.flare_outlined,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.install_mobile,
                            color: Colors.lightBlue,
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
                  decoration: BoxDecoration(
                    color: '#DE847B'.toColor(),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  decoration: BoxDecoration(
                    color: '#DE847B'.toColor(),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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