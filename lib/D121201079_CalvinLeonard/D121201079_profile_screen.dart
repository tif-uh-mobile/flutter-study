import 'package:flutter/material.dart';

class D121201079_CalvinRinaldyLeonard extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar : AppBar(title: Text("D121201079_CalvinRinaldyLeonard")),
        body:SafeArea(
            child:Container(
                margin:EdgeInsets.all(20),
                child:Wrap(
                    children:<Widget>[
                      Container(
                        margin:EdgeInsets.only(top:10.0,left:10.0),
                        width: 130,
                        height :135,
                        child:Image.network("https://assets.pikiran-rakyat.com/crop/6x114:1073x863/x/photo/2021/12/05/4100183639.jpg",
                            fit:BoxFit.cover),
                        decoration: BoxDecoration(
                            border: Border.all(color : Colors.black)
                        ),
                      ),
                      Container(
                        child:Column(
                          children:<Widget> [
                            Container(
                              margin:EdgeInsets.only(left:15, top:13),
                              width:205,
                              height:35,
                              child: Text("Calvin Leonard",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                  )),
                              decoration: BoxDecoration(
                                  border: Border.all(color:Colors.black)
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.only(left:15, top:13),
                              width:205,
                              height:35,
                              child:Text("Hobi : Coding",
                                  style:  TextStyle(
                                    fontSize: 18,
                                  )),
                              decoration: BoxDecoration(
                                  border: Border.all(color:Colors.black)
                              ),
                            ),
                            Container(
                              margin:EdgeInsets.only(left:15, top:13),
                              width:205,
                              height:35,
                              child:Row(
                                  children:<Widget>[
                                    Icon(
                                        Icons.emoji_emotions,
                                        color: Colors.blue,
                                        size:30
                                    ),
                                    Icon(
                                        Icons.emoji_emotions_outlined,
                                        color: Colors.green,
                                        size:30
                                    ),
                                    Icon(
                                        Icons.emoji_emotions_sharp,
                                        color: Colors.deepOrange,
                                        size:30
                                    )
                                  ]
                              ),
                            ),],),),
                      Container(
                          child:Column(
                              children:<Widget>[
                                Container(
                                    margin:EdgeInsets.only(left:10, top: 15, right :10),
                                    width:350,
                                    height:35,
                                    child: Text("D121201079 - Calvin Rinaldy Leonard - Pemograman Mobile C ",
                                        style:TextStyle(
                                            fontSize: 14
                                        )),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black)
                                    )
                                ),
                                Container(
                                  margin:EdgeInsets.only(left:10, top:15, right: 10),
                                  width:350,
                                  height:350,
                                  child: Text("Halo... Nama saya Calvin Rinaldy Leonard, NIM : D121201079 mahasiswa Universitas Hasanuddin, ini adalah program mobile Flutter pertama saya",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 30
                                      )),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black)
                                  ),
                                ),
                              ]
                          )
                      )

                    ]
                )
            )
        )
    );
  }
}