import 'package:flutter/material.dart';
import 'package:tugas_pemrograman_mobile/D121201078_Adnan-Fauzan-Ramdhani'
    '/D121201078_detail_profile_screen.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key, required this.title});
  final String title;

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                      DetailMyProfile(title: 'Detail Profile')),
                  );
                },
                  child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/patrick.jpg'),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text('Adnan Fauzan Ramdhani'),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 5)
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text('Bermain Game'),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 5)
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text('White'),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 5)
                ),
              ),
            ],
          ),
        ),
      );
    }
  }