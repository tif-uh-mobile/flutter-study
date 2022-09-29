import 'package:flutter/material.dart';
var _rating = 0;

class Julmei extends StatelessWidget {
  const Julmei({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
        title: const Text("Halaman Profile"),),
      body: Container(
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/bg1.jpg"),
      fit: BoxFit.cover,
    ),),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(20),
        width: 200,
        height: 400,
        decoration: const BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            GestureDetector(
            onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutMe()));

      },
        child :const CircleAvatar(
          radius: 60,
          backgroundImage:AssetImage("assets/Foto.jpg"),
        ),
      ),
      Container(
        child: const Center(
          child: Text(
            "Julmei Semuel",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        margin: const EdgeInsets.only(top: 15),
        width: 200,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
      ),
              Container(
                child: const Center(
                  child: Text(
                    "Menggambar",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
              ),
              Container(
                child: const Center(
                  child: Text(
                    "Hitam dan Putih",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                ),
              ),
            ],
        ),
        ),
            ],
        ),
      ),
    );
  }
}

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tentang Saya"),
        ),
        body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/bg2.jpg"),
    fit: BoxFit.cover,
    ),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Container(
    padding: const EdgeInsets.all(5),
    margin: const EdgeInsets.all(10),
    width: 500,
    height: 550,
    decoration: const BoxDecoration(
    color: Colors.black87,
    borderRadius: BorderRadius.all(Radius.circular(5))),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Container(
    width: 125,
    height: 155,
    decoration: const BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/Foto.jpg'),
    fit: BoxFit.cover,
    ),
    ),
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(
    width: 250,
    height: 55,
    child: Card(
    color: Colors.black87,
    margin: EdgeInsets.symmetric(vertical:0, horizontal: 10),
    child: Center(child: Text("Julmei Semuel",
    style: TextStyle(color: Colors.white,
    fontSize: 30, fontWeight: FontWeight.bold),
    textAlign: TextAlign.left,)),
    ),
    ),
    const SizedBox(
    width: 250,
    height: 55,
    child: Card(
    color: Colors.black87,
    margin: EdgeInsets.symmetric(vertical:5, horizontal: 10),
    child: Padding(
    padding: EdgeInsets.all(5.0),
    child: Text("Menggambar",
    style: TextStyle(color: Colors.white,
    fontSize: 24, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,),
    )),
    ),
    Row(
    children: List.generate(
    5,
    (index) => IconButton(
    onPressed: () {
    setState(() {
    _rating = index + 1;
    });
    },
    color: Colors.white,
    icon: index < _rating
    ? const Icon(Icons.draw)
        : const Icon(Icons.draw),
    iconSize: 20,
    ),
    ),)
    ],
    )
    ],
    ),
    Container(
    margin: const EdgeInsets.only(top: 10.0),
    child: const Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
    "Mengembangkan kemampuan yang dimiki",
    style: TextStyle(color: Colors.white, fontSize: 16),
    ),
    ),
    width: 380,
    height: 40,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.white, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    ),
    ),
    Container(
    margin: const EdgeInsets.only(top: 10.0),
    child: const Padding(
    padding: EdgeInsets.all(8.0),
    child: Text(
    "Menggambar merupakan suatu hal yang menyenangkan bagiku, memanifestasikan suatu hal yang berada di dalam pikiran seseorang dan membuatnya menjadi realita dengan menggambarnya membuatku tidak pernah bosan karena pada dasarnya pikiran manusia tidak memiliki batas.",
    style: TextStyle(letterSpacing:1, wordSpacing: 2,
    color: Colors.white, fontSize: 14, ),
    ),
    ),
    width: 380,
    height: 320,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.white, width: 1),
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    ),
    )
    ],
    ),
    ),
    ],
    ),));
  }
}