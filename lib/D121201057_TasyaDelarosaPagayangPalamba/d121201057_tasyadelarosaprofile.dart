import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201057_TasyaDelarosaPagayangPalamba/d121201057_tasyadelarosadetail.dart';
import 'package:tif_flutter/extentions.dart';

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
        title: const Text('D121201057 Tasya Delarosa Profile Screen'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTapDown: (_) {
                        Navigator.push(context, MaterialPageRoute(builder: (ctx) => const NimDetailScreen()));
                      },
                      child: const CircleAvatar(
                        radius: 48,
                        backgroundImage: NetworkImage(
                          'https://lh3.googleusercontent.com/drive-viewer/AJc5JmSdVl3FmOddawXtIJ2uR204rqVdoILPfDyaupsGoSfDxMdXYVDh_22ChHT3YoPUOY-vpI-vGfE=w1920-h392',
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: '#DE847B'.toColor(),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text(
                            'Tasya Delarosa',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: '#DE847B'.toColor(),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text(
                            'Traveling, Culinary',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: 160.0,
                          margin: const EdgeInsets.only(
                            top: 20.0,
                          ),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: '#DE847B'.toColor(),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text(
                            'Beige, Sage Green',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ]
          )
      ),
    );
  }
}