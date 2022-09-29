import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201004_Fauzan-Adithya-ZM/D121201004_detail_screen.dart';

class D121201004ProfileScreen extends StatefulWidget {
  const D121201004ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201004ProfileScreen> createState() => _D121201004ProfileScreenState();
}

class _D121201004ProfileScreenState extends State<D121201004ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201004 Fauzan Adithya Z. M. Profile Screen'),
      ),

      body: BackgroundGrad(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (ctx) => D121201004DetailScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(
                  width: 2,
                  color: Colors.white,
                ),
                shape: CircleBorder(),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/D121201004.jpeg'),
                radius: 90,
              )
            ),

            TextBox(text: 'Fauzan A. Z. Mursalin'),
            TextBox(text: 'Basketball'),
            TextBox(text: 'Abu-abu'),
          ],
        ),
      ),
    );
  }
}

class BackgroundGrad extends StatelessWidget {

  const BackgroundGrad({Key? key, required this.child}) : super(key: key);

  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Center (
      child: Container(
        width: 360,
        height: 510,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.purple,
              Colors.pink,
              Colors.orange,
              Colors.yellowAccent
            ],
          ),
          border: Border.all(
            color: Colors.white,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(1),
              spreadRadius: 7 ,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: child
      )
    );
  }
}

class TextBox extends StatelessWidget {

  const TextBox({Key? key,
    required this.text
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          width: 2,
          color: Colors.white,
        ),
      ),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 20
          ),
        ),
      ),
    );
  }
}

