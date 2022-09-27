import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'D121201016_profile_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text Controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              SizedBox(height: 75),

             CircleAvatar(
                radius:80,
                backgroundColor: Color.fromARGB(255, 255, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(8), // Border radius
                  child: ClipOval(child: Image.network('https://media-exp1.licdn.com/dms/image/C4D03AQHVY3sCFF-Lzw/profile-displayphoto-shrink_200_200/0/1636239448855?e=1669248000&v=beta&t=Nkb1NX4bNKbeCfe1KSbdPfsGa3rZ6dOaa-7L5AASBP0')),
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Welcome to My World',
                style: GoogleFonts.bebasNeue(
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Sign In to continue',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 40),

           
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 150, 93, 255),
                          ),
                        ),
                        hintText: 'Zid Irsyadin Sartono Wijaogy',
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true)),
              ),
              SizedBox(height: 10),
              //password textField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                        hintText: 'D121201016',
                        fillColor: Color.fromARGB(255, 255, 255, 255),
                        filled: true)),
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.all(25.0),
                  child: Container(
                      child: ElevatedButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => ProfilePage(),
                           ),
                         );
                       },
                        child: new Text('Sign In', style: new TextStyle(fontSize: 15)),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 0, 140, 255),
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                        ),
                      ),
                ),
              ),
              SizedBox(height: 50),
            ]))),
      ),
    );
  }
}
