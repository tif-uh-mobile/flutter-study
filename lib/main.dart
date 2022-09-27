import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tif_flutter/D121201016_Zid Irsyadin Sartono Wijaogy/D121201016_profile_screen.dart';
import 'package:tif_flutter/D121201016_Zid%20Irsyadin%20Sartono%20Wijaogy/login_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        dividerColor: Colors.black,
      ),
      home: LoginPage(),
    );
  }
}