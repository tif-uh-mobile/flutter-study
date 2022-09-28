import 'package:flutter/material.dart';
import 'package:my_app/D121201043_Alexander Gosal/components/body.dart';

class Profile extends StatelessWidget{
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),backgroundColor: Colors.redAccent,),
      body: Body(),
    );
  }
}
