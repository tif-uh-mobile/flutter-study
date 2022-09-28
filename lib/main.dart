import 'package:flutter/material.dart';
import 'package:my_app/D121201043_Alexander Gosal/profile_extend.dart';
import 'package:my_app/D121201043_Alexander Gosal/profile_screen.dart';

void main()=>runApp(
  MaterialApp(
    initialRoute: "/profile",
    routes: {
      "/profile":(context)=>Profile(),
      "/second": (context)=>Profile_Next(),
    }
  )
);
