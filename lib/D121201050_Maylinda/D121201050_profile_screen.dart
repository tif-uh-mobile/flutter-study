import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tif_flutter/main.dart';


class D121201050ProfileScreen extends StatefulWidget {
  const D121201050ProfileScreen({Key? key}) : super(key: key);

  @override
  State<D121201050ProfileScreen> createState() => _D121201050rofileScreenState();
}

class _D121201050rofileScreenState extends State<D121201050ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor.fromHex('#354259'),
      appBar: AppBar(
        backgroundColor: HexColor.fromHex('#354259'),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.push(
            context,
            MaterialPageRoute(builder:
            (context) => const MyHomePage(title: 'Tugas Flutter')));
          },
        ),
      ),
      body: Center (child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('assets/img/foto2.jpeg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text('ig: may_eka.c',
              style: TextStyle(fontFamily: 'devitta',
                fontSize: 20,
                color: Colors.white,
            ),),
          )
          ,Expanded(
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: HexColor.fromHex('#ECE5C7'),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(34))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Container(
                      child: Container(
                        width: 300,
                        height: 50,
                        margin: EdgeInsets.only(top: 40),
                        decoration: BoxDecoration(
                          color: HexColor.fromHex('#CDC2AE'),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Maylinda Eka Christy',
                              style: TextStyle(fontSize: 20,
                              fontFamily: 'gomik'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ),
                    Container(
                        child: Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                            color: HexColor.fromHex('#CDC2AE'),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'D121201050',
                                style: TextStyle(fontSize: 20,
                                    fontFamily: 'gomik'),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                        child: Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                            color: HexColor.fromHex('#CDC2AE'),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'Reading, Watching, eating',
                                style: TextStyle(fontSize: 20,
                                    fontFamily: 'gomik'),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                    ),
                    Container(
                        child: Container(
                          width: 300,
                          height: 50,
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                            color: HexColor.fromHex('#CDC2AE'),
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                'All pastel Colors',
                                style: TextStyle(fontSize: 20,
                                    fontFamily: 'gomik'),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                    ),
                    GestureDetector(
                      onTap: () =>{
                        Navigator.of(context).push(MaterialPageRoute(builder:
                        (context){
                          return const more();
                        }))
                      },
                      child: Container(
                          child: Container(
                            width: 300,
                            height: 50,
                            margin: EdgeInsets.only(top: 60),
                            decoration: BoxDecoration(
                              color: HexColor.fromHex('#898AA6'),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'More',
                                  style: TextStyle(fontSize: 20,
                                      fontFamily: 'gomik'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          )
                      ),


                    ),
                  ],
                ),
              ),
            )
          )
        ],
      )),
    );
  }
}




class more extends StatefulWidget {
  const more({Key? key}): super(key: key);

  @override
  State<more> createState() => _moreState();
}
class _moreState extends State<more>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor.fromHex('#354259'),
      appBar: AppBar(
        backgroundColor: HexColor.fromHex('#354259'),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
             Padding(
               padding: const EdgeInsets.only(top: 1, left: 15, bottom: 30),
               child: Container(
                 width: 150,
                 height: 170,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(15),
                   image: new DecorationImage(
                     fit: BoxFit.cover,
                     image: new AssetImage('assets/img/foto3.JPG')
                   )
                 ),
               ),
             ), 
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30, left: 8),
                    child: Container(
                      width: 230,
                      height: 40,
                      decoration: BoxDecoration(
                        color: HexColor.fromHex('#CDC2AE'),
                        borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                  'Maylinda Eka Christy',
                                 style: TextStyle(
                                   fontFamily: 'gomik',
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold,
                                   fontSize: 18,
                                 )
                               ),
                            ),
                          ),
                          ],
                        ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 8),
                    child: Container(
                      width: 230,
                      height: 40,
                      decoration: BoxDecoration(
                          color: HexColor.fromHex('#CDC2AE'),
                          borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                  'eating, cooking',
                                  style: TextStyle(
                                    fontFamily: 'gomik',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Stack(
                    children: <Widget> [
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 1, left: 5),
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.emoji_food_beverage,
                                  color: Colors.white,
                                  size: 40,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1, left: 10),
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.cabin,
                                  color: Colors.white,
                                  size: 40,
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 1, left: 10),
                            child: Row(
                              children: <Widget> [
                                Icon(
                                  Icons.catching_pokemon,
                                  color: Colors.white,
                                  size: 40,
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Expanded(child:
          Padding(
            padding:  const EdgeInsets.all(7.0),
            child: Container(
              width: double.infinity,
              // margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: HexColor.fromHex('#ECE5C7'),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(18))
              ),
              child: Column(
                children: <Widget> [
                  Container(
                    child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.only(top: 40, right: 100),
                      decoration: BoxDecoration(
                        color: HexColor.fromHex('#CDC2AE'),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Being a wallflower',
                            style: TextStyle(fontSize: 20,
                                fontFamily: 'gomik'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      child: Container(
                        width: 350,
                        height: 400,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: HexColor.fromHex('#CDC2AE'),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Okeh, Last but not least, I wanna thank me, '
                                  'I wanna thank me for believing in me, '
                                  'I wanna thank me for doing all this hard work, '
                                  'I wanna thank me for having no days off, '
                                  'I wanna thank me for, for never quitting, '
                                  'I wanna thank me for always being a giver, '
                                  'And tryna give more than I recieve, '
                                  'I wanna thank me for tryna do more right than wrong, '
                                  'I wanna thank me for just being me at all times',
                              softWrap: false,
                              maxLines : 15,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 20,
                                  fontFamily: 'gomik'),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}