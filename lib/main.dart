import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201067_Teguh/D121201067_profile_screen.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Teguh's App"),
      ),

      body: Center(
        child: Column(
          children: <Widget>[

            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => D121201067_profile_screen(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/images/foto.png'),
                      fit: BoxFit.fitWidth
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(20),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //
              //   ),
              // ),
              child: Text(
                'Teguh Ikhtiar Rhamdanu',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //   ),
              // ),
              child:  Text(
                'Membaca',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              // decoration: BoxDecoration(
              //   border: Border.all(
              //   ),
              // ),
              child:  Text(
                'Hijau',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.thumb_up),
        onPressed: () => {},
      ),
    );
  }
}
