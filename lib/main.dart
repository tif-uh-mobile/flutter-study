import 'package:flutter/material.dart';
import 'D121201078_Adnan-Fauzan-Ramdhani/D12120178_profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyProfile(title: 'MyProfile'),
    );
  }
}