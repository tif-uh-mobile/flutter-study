import 'package:flutter/material.dart';
import 'package:tif_flutter/D121201047_Alif-Fauzan/D121201047_information.dart';

class D121201047ProfileScreen extends StatefulWidget {
  const D121201047ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201047ProfileScreen> createState() => _D121201047ProfileScreenState();
}

class _D121201047ProfileScreenState extends State<D121201047ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('D121201047 Alif Fauzan Profile Screen'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackGrad(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 25)),
                  ElevatedButton (
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) => DetailProfile()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 87.5,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage('lib/D121201047_Alif-Fauzan/assets/2.jpg'),
                      ),
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(top: 30)),
                  BorderText(text: 'Alif Fauzan'),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  BorderText(text: 'Playing musical instrument'),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  BorderText(text: 'Black'),
                  Padding(padding: EdgeInsets.only(top: 35)),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class BackGrad extends StatelessWidget {
  const BackGrad({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            spreadRadius: 1.5,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ],
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.blue,
            Colors.cyan,
            Colors.white
          ],
        ),
      ),
      child: child,
    );
  }
}

class BorderText extends StatelessWidget {
  const BorderText({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class NavigateButton extends StatelessWidget {

  const NavigateButton({Key? key,
    required this.name,
    required this.page
  }) : super(key: key);

  final Widget page;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      child: Text(name),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (ctx) => page));
      },
    );
  }
}