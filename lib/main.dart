import 'package:tif_flutter/D121201079_CalvinLeonard/D121201079_profile_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home:MyApp()
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(title : Text("Halaman Profile"),),
            body:Center(
                child:Container(
                    margin:EdgeInsets.all(50),
                    child:Column(
                        children:<Widget>[
                          Material(
                            elevation:8,
                            shape:CircleBorder(),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: ElevatedButton(
                              child:Image(
                                  image: NetworkImage("https://assets.pikiran-rakyat.com/crop/6x114:1073x863/x/photo/2021/12/05/4100183639.jpg"),
                                  width:200,
                                  height:200,
                                  fit:BoxFit.cover
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => D121201079_CalvinRinaldyLeonard()));
                              },
                            ),
                          ),
                          Container(
                            width:200,
                            height:35,
                            padding: EdgeInsets.all(3.0),
                            margin:EdgeInsets.all(20),
                            decoration:BoxDecoration(
                                border : Border.all(color: Colors.black)
                            ),
                            child : Text("Calvin Rinaldy Leonard",
                                style: TextStyle(fontSize:18.0)),
                          ),
                          Container(
                              width:200,
                              height:35,
                              padding:EdgeInsets.all(3.0),
                              margin:EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black)
                              ),
                              child:Text("Hobi : Coding",
                                style: TextStyle(fontSize:18.0),)
                          ),
                          Container(
                              width:200,
                              height:35,
                              padding:EdgeInsets.all(3),
                              margin:EdgeInsets.all(20),
                              decoration : BoxDecoration(
                                  border : Border.all(color : Colors.black)
                              ),
                              child: Text("Warna Favorit : Putih",
                                  style : TextStyle(fontSize:18.0))
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}

